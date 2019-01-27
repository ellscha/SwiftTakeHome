import UIKit

extension Node {
    
    //if using Objective-C, leave this alone and implement the function in WebsiteVisitObjectiveC.m
    //if using Swift, implement this function

    /**
     Given a root node and a pixel, return an array of nodeIds (path) to the node containing the pixel
     */
    static func findPathToNode(rootNode: Node, drawnAtPixel pixel: CGPoint) -> [String] {
        let unformattedPath = findPathRecursively(node: rootNode, frame: rootNode.frame, pixel: pixel, pathArray: [])
        
        // Use this array to remove duplicate nodes, and use an array instead of a Set to maintain path order
        var path: [String] = []
        for node in unformattedPath {
            if !path.contains(node) {
                path.append(node)
            }
        }
        return path
    }

    /**
     Creates the path from the given node to the last node containing the pixel using recursion.
     - Parameter node: The node to be investigated
     - Parameter frame: The frame of the current node relative to the full screen instead of the parent node
     - Parameter pixel: The pixel to find
     - Parameter pathArray: Array that maintains the correct path
     */
    static func findPathRecursively(node: Node, frame: CGRect, pixel: CGPoint, pathArray: [String]) -> [String] {
        if !isPixelWithinFrame(frame: frame, pixel: pixel) {
            return []
        }
        
        var pathArrayCopy = pathArray
        if isPixelWithinFrame(frame: frame, pixel: pixel) {
            if node.children.count == 0 {
                return [node.nodeId]
            }
            pathArrayCopy.append(node.nodeId)
        }
        
        /**
         A reversed order of the current node's children that have frames that the pixel is within.
         Order is reversed since last child node has highest priority.
         */
        let viableChildren: [Node] = node.children.filter {
            let newFrame = CGRect(x: frame.minX + $0.frame.minX, y: frame.minY + $0.frame.minY, width: $0.frame.width, height: $0.frame.height)
            return isPixelWithinFrame(frame: newFrame, pixel: pixel)
        }.reversed()
        
        if viableChildren.count > 0 {
            let lastViableChild = viableChildren[0]
            
            /// The frame of the child node relative to the full screen instead of the parent node
            let objectiveFrame = CGRect(x: frame.minX + lastViableChild.frame.minX, y: frame.minY + lastViableChild.frame.minY, width: lastViableChild.frame.width, height: lastViableChild.frame.height)
            return pathArrayCopy + findPathRecursively(node: lastViableChild, frame: objectiveFrame, pixel: pixel, pathArray: pathArrayCopy)
        }
        return pathArrayCopy
    }
    
    static func isPixelWithinFrame(frame: CGRect, pixel: CGPoint) -> Bool {
        // Tests show that if pixel is at top left of frame, it is within the frame,
        // but pixel at bottom right of frame is not.
        return frame.minX <= pixel.x && frame.minY <= pixel.y && frame.maxX > pixel.x && frame.maxY > pixel.y
    }
}
