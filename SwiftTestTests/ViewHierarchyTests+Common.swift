import XCTest
@testable import iOSTest
import UIKit

extension ViewHierarchyTests {
    public func runTestOnNode(_ node: Node) {
        tag = 0
        let (view, tagToIdMap) = viewFromNode(node)

        let endX = Int(node.frame.width)
        let endY = Int(node.frame.height)
        for x in -1...endX {
            for y in -1...endY {
            let pixel = CGPoint(x: CGFloat(x), y: CGFloat(y))

            let result = Node.findPathToNode(rootNode: node, drawnAtPixel: pixel)
            let expected = findPathToView(rootView: view, atPixel: pixel, withIdMap: tagToIdMap)

            XCTAssertEqual(result, expected)
            }
        }
    }

    private func viewFromNode(_ node: Node) -> (view: UIView, tagToIdMap: [Int : String]) {
        let view = UIView(frame: node.frame)
        view.tag = tag

        var tagToIdMap: [Int : String] = [:]
        tagToIdMap[tag] = node.nodeId

        tag += 1

        for child in node.children {
            let (childView, childMap) = viewFromNode(child)
            view.addSubview(childView)
            tagToIdMap.merge(with: childMap)
        }

        return (view, tagToIdMap)
    }

    private func findPathToView(rootView: UIView, atPixel: CGPoint, withIdMap map: [Int : String]) -> [String] {
        var view = rootView.hitTest(atPixel, with: nil)
        var ids: [String] = []

        while let loopView = view {
            let tag = loopView.tag
            let id = map[tag]!
            ids.insert(id, at: 0)

            view = loopView.superview
        }

        return ids
    }
}


extension Dictionary {
    mutating func merge(with dictionary: Dictionary) {
        dictionary.forEach { updateValue($1, forKey: $0) }
    }
}
