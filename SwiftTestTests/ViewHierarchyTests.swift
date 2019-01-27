import XCTest
@testable import iOSTest
import UIKit

class ViewHierarchyTests: XCTestCase {
    var tag = 0

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    func test1_Easy() {
        let root = Node(nodeId: "root", frame: CGRect(x: 0, y: 0, width: 10, height: 10), children: [
            Node(nodeId: "child-0", frame: CGRect(x: 3, y: 0, width: 2, height: 6), children: []),
            Node(nodeId: "child-1", frame: CGRect(x: 3, y: 7, width: 3, height: 1), children: [])
            ])

        runTestOnNode(root)
    }
    
    func test2_Medium() {
        let root = Node(nodeId: "root", frame: CGRect(x: 0, y: 0, width: 10, height: 10), children: [
            Node(nodeId: "child-0", frame: CGRect(x: 5, y: 1, width: 3, height: 5), children: []),
            Node(nodeId: "child-1", frame: CGRect(x: 3, y: 3, width: 7, height: 1), children: [])
            ])

        runTestOnNode(root)
    }
    
    func test3_Hard() {
        let root = Node(nodeId: "node", frame: CGRect(x: 0, y: 0, width: 50, height: 50), children: [
            Node(nodeId: "node-0", frame: CGRect(x: 0, y: 7, width: 41, height: 39), children: [
                Node(nodeId: "node-0-0", frame: CGRect(x: 0, y: 7, width: 40, height: 30), children: [
                    Node(nodeId: "node-0-0-0", frame: CGRect(x: 1, y: 17, width: 31, height: 6), children: [
                        Node(nodeId: "node-0-0-0-0", frame: CGRect(x: 6, y: 1, width: 16, height: 4), children: []),
                        Node(nodeId: "node-0-0-0-3", frame: CGRect(x: 0, y: 1, width: 25, height: 4), children: []),
                        Node(nodeId: "node-0-0-0-4", frame: CGRect(x: 0, y: 0, width: 30, height: 5), children: []),
                        Node(nodeId: "node-0-0-0-5", frame: CGRect(x: 11, y: 3, width: 18, height: 2), children: []),
                        Node(nodeId: "node-0-0-0-6", frame: CGRect(x: 1, y: 1, width: 11, height: 4), children: []),
                        Node(nodeId: "node-0-0-0-7", frame: CGRect(x: 0, y: 2, width: 30, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-0-0-1", frame: CGRect(x: 0, y: 0, width: 10, height: 28), children: [
                        Node(nodeId: "node-0-0-1-0", frame: CGRect(x: 4, y: 11, width: 4, height: 14), children: [])
                    ]),
                    Node(nodeId: "node-0-0-2", frame: CGRect(x: 1, y: 2, width: 32, height: 27), children: [
                        Node(nodeId: "node-0-0-2-0", frame: CGRect(x: 28, y: 8, width: 1, height: 9), children: []),
                        Node(nodeId: "node-0-0-2-1", frame: CGRect(x: 20, y: 5, width: 9, height: 4), children: []),
                        Node(nodeId: "node-0-0-2-2", frame: CGRect(x: 16, y: 11, width: 1, height: 6), children: []),
                        Node(nodeId: "node-0-0-2-3", frame: CGRect(x: 2, y: 19, width: 24, height: 3), children: []),
                        Node(nodeId: "node-0-0-2-4", frame: CGRect(x: 5, y: 0, width: 19, height: 15), children: []),
                        Node(nodeId: "node-0-0-2-5", frame: CGRect(x: 2, y: 16, width: 28, height: 7), children: [])
                    ]),
                    Node(nodeId: "node-0-0-4", frame: CGRect(x: 0, y: 2, width: 17, height: 14), children: [
                        Node(nodeId: "node-0-0-4-0", frame: CGRect(x: 9, y: 2, width: 3, height: 5), children: []),
                        Node(nodeId: "node-0-0-4-2", frame: CGRect(x: 2, y: 2, width: 11, height: 11), children: []),
                        Node(nodeId: "node-0-0-4-3", frame: CGRect(x: 1, y: 1, width: 10, height: 1), children: []),
                        Node(nodeId: "node-0-0-4-4", frame: CGRect(x: 0, y: 7, width: 15, height: 6), children: []),
                        Node(nodeId: "node-0-0-4-5", frame: CGRect(x: 2, y: 0, width: 13, height: 13), children: []),
                        Node(nodeId: "node-0-0-4-7", frame: CGRect(x: 12, y: 4, width: 2, height: 4), children: []),
                        Node(nodeId: "node-0-0-4-8", frame: CGRect(x: 11, y: 0, width: 5, height: 13), children: [])
                    ]),
                    Node(nodeId: "node-0-0-5", frame: CGRect(x: 16, y: 0, width: 11, height: 28), children: [
                        Node(nodeId: "node-0-0-5-0", frame: CGRect(x: 0, y: 2, width: 6, height: 21), children: []),
                        Node(nodeId: "node-0-0-5-1", frame: CGRect(x: 2, y: 9, width: 6, height: 15), children: []),
                        Node(nodeId: "node-0-0-5-3", frame: CGRect(x: 0, y: 0, width: 10, height: 27), children: []),
                        Node(nodeId: "node-0-0-5-4", frame: CGRect(x: 0, y: 1, width: 8, height: 24), children: []),
                        Node(nodeId: "node-0-0-5-5", frame: CGRect(x: 2, y: 6, width: 7, height: 13), children: []),
                        Node(nodeId: "node-0-0-5-6", frame: CGRect(x: 1, y: 0, width: 7, height: 24), children: [])
                    ]),
                    Node(nodeId: "node-0-0-6", frame: CGRect(x: 0, y: 0, width: 29, height: 26), children: [
                        Node(nodeId: "node-0-0-6-0", frame: CGRect(x: 0, y: 9, width: 28, height: 3), children: []),
                        Node(nodeId: "node-0-0-6-1", frame: CGRect(x: 9, y: 1, width: 9, height: 4), children: []),
                        Node(nodeId: "node-0-0-6-2", frame: CGRect(x: 1, y: 14, width: 26, height: 8), children: []),
                        Node(nodeId: "node-0-0-6-3", frame: CGRect(x: 5, y: 0, width: 5, height: 25), children: [])
                    ])
                ]),
                Node(nodeId: "node-0-1", frame: CGRect(x: 26, y: 8, width: 13, height: 4), children: [
                    Node(nodeId: "node-0-1-0", frame: CGRect(x: 4, y: 1, width: 4, height: 1), children: [])
                ]),
                Node(nodeId: "node-0-2", frame: CGRect(x: 0, y: 9, width: 39, height: 20), children: [
                    Node(nodeId: "node-0-2-0", frame: CGRect(x: 21, y: 0, width: 7, height: 18), children: [
                        Node(nodeId: "node-0-2-0-0", frame: CGRect(x: 3, y: 13, width: 2, height: 3), children: []),
                        Node(nodeId: "node-0-2-0-1", frame: CGRect(x: 1, y: 6, width: 4, height: 9), children: []),
                        Node(nodeId: "node-0-2-0-2", frame: CGRect(x: 4, y: 4, width: 2, height: 9), children: []),
                        Node(nodeId: "node-0-2-0-4", frame: CGRect(x: 3, y: 0, width: 1, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-0-2-1", frame: CGRect(x: 3, y: 4, width: 33, height: 13), children: [
                        Node(nodeId: "node-0-2-1-0", frame: CGRect(x: 1, y: 0, width: 22, height: 11), children: []),
                        Node(nodeId: "node-0-2-1-1", frame: CGRect(x: 31, y: 6, width: 1, height: 2), children: []),
                        Node(nodeId: "node-0-2-1-2", frame: CGRect(x: 30, y: 8, width: 2, height: 1), children: []),
                        Node(nodeId: "node-0-2-1-3", frame: CGRect(x: 17, y: 8, width: 3, height: 3), children: []),
                        Node(nodeId: "node-0-2-1-4", frame: CGRect(x: 3, y: 5, width: 18, height: 6), children: [])
                    ]),
                    Node(nodeId: "node-0-2-2", frame: CGRect(x: 1, y: 11, width: 14, height: 8), children: [
                        Node(nodeId: "node-0-2-2-0", frame: CGRect(x: 0, y: 1, width: 13, height: 5), children: []),
                        Node(nodeId: "node-0-2-2-2", frame: CGRect(x: 3, y: 0, width: 3, height: 5), children: []),
                        Node(nodeId: "node-0-2-2-4", frame: CGRect(x: 9, y: 0, width: 4, height: 2), children: []),
                        Node(nodeId: "node-0-2-2-5", frame: CGRect(x: 8, y: 5, width: 1, height: 1), children: []),
                        Node(nodeId: "node-0-2-2-6", frame: CGRect(x: 3, y: 0, width: 10, height: 4), children: []),
                        Node(nodeId: "node-0-2-2-7", frame: CGRect(x: 0, y: 2, width: 9, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-0-2-3", frame: CGRect(x: 12, y: 1, width: 25, height: 15), children: [
                        Node(nodeId: "node-0-2-3-0", frame: CGRect(x: 0, y: 0, width: 23, height: 6), children: []),
                        Node(nodeId: "node-0-2-3-1", frame: CGRect(x: 3, y: 0, width: 18, height: 13), children: []),
                        Node(nodeId: "node-0-2-3-3", frame: CGRect(x: 12, y: 9, width: 7, height: 3), children: [])
                    ])
                ]),
                Node(nodeId: "node-0-3", frame: CGRect(x: 0, y: 21, width: 39, height: 2), children: [
                    Node(nodeId: "node-0-3-2", frame: CGRect(x: 1, y: 0, width: 37, height: 1), children: []),
                    Node(nodeId: "node-0-3-3", frame: CGRect(x: 0, y: 0, width: 37, height: 1), children: [])
                ]),
                Node(nodeId: "node-0-4", frame: CGRect(x: 3, y: 0, width: 14, height: 37), children: [
                    Node(nodeId: "node-0-4-1", frame: CGRect(x: 2, y: 6, width: 7, height: 29), children: [
                        Node(nodeId: "node-0-4-1-0", frame: CGRect(x: 2, y: 20, width: 1, height: 7), children: []),
                        Node(nodeId: "node-0-4-1-1", frame: CGRect(x: 0, y: 8, width: 6, height: 11), children: []),
                        Node(nodeId: "node-0-4-1-2", frame: CGRect(x: 0, y: 2, width: 5, height: 23), children: []),
                        Node(nodeId: "node-0-4-1-3", frame: CGRect(x: 0, y: 5, width: 5, height: 22), children: [])
                    ]),
                    Node(nodeId: "node-0-4-2", frame: CGRect(x: 0, y: 19, width: 11, height: 16), children: [
                        Node(nodeId: "node-0-4-2-0", frame: CGRect(x: 3, y: 6, width: 5, height: 9), children: []),
                        Node(nodeId: "node-0-4-2-1", frame: CGRect(x: 0, y: 1, width: 10, height: 13), children: []),
                        Node(nodeId: "node-0-4-2-2", frame: CGRect(x: 1, y: 0, width: 8, height: 12), children: [])
                    ]),
                    Node(nodeId: "node-0-4-3", frame: CGRect(x: 3, y: 29, width: 6, height: 5), children: [
                        Node(nodeId: "node-0-4-3-0", frame: CGRect(x: 0, y: 3, width: 3, height: 1), children: []),
                        Node(nodeId: "node-0-4-3-1", frame: CGRect(x: 0, y: 1, width: 1, height: 3), children: []),
                        Node(nodeId: "node-0-4-3-2", frame: CGRect(x: 0, y: 0, width: 5, height: 4), children: []),
                        Node(nodeId: "node-0-4-3-4", frame: CGRect(x: 0, y: 0, width: 5, height: 4), children: []),
                        Node(nodeId: "node-0-4-3-6", frame: CGRect(x: 1, y: 0, width: 2, height: 3), children: [])
                    ])
                ]),
                Node(nodeId: "node-0-5", frame: CGRect(x: 6, y: 31, width: 34, height: 7), children: [
                    Node(nodeId: "node-0-5-0", frame: CGRect(x: 14, y: 2, width: 8, height: 3), children: [
                        Node(nodeId: "node-0-5-0-0", frame: CGRect(x: 0, y: 1, width: 5, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-0-5-1", frame: CGRect(x: 8, y: 2, width: 11, height: 4), children: [
                        Node(nodeId: "node-0-5-1-0", frame: CGRect(x: 7, y: 1, width: 2, height: 2), children: []),
                        Node(nodeId: "node-0-5-1-1", frame: CGRect(x: 2, y: 2, width: 5, height: 1), children: []),
                        Node(nodeId: "node-0-5-1-2", frame: CGRect(x: 2, y: 1, width: 7, height: 2), children: []),
                        Node(nodeId: "node-0-5-1-4", frame: CGRect(x: 1, y: 1, width: 8, height: 1), children: []),
                        Node(nodeId: "node-0-5-1-6", frame: CGRect(x: 5, y: 2, width: 5, height: 1), children: []),
                        Node(nodeId: "node-0-5-1-8", frame: CGRect(x: 2, y: 2, width: 4, height: 1), children: []),
                        Node(nodeId: "node-0-5-1-10", frame: CGRect(x: 0, y: 0, width: 9, height: 3), children: []),
                        Node(nodeId: "node-0-5-1-11", frame: CGRect(x: 3, y: 1, width: 6, height: 1), children: []),
                        Node(nodeId: "node-0-5-1-12", frame: CGRect(x: 2, y: 0, width: 5, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-0-5-2", frame: CGRect(x: 8, y: 2, width: 12, height: 4), children: [
                        Node(nodeId: "node-0-5-2-0", frame: CGRect(x: 5, y: 0, width: 3, height: 3), children: []),
                        Node(nodeId: "node-0-5-2-3", frame: CGRect(x: 1, y: 1, width: 3, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-0-5-3", frame: CGRect(x: 7, y: 0, width: 14, height: 2), children: [
                        Node(nodeId: "node-0-5-3-0", frame: CGRect(x: 8, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-0-5-3-1", frame: CGRect(x: 4, y: 0, width: 9, height: 1), children: []),
                        Node(nodeId: "node-0-5-3-4", frame: CGRect(x: 4, y: 0, width: 7, height: 1), children: []),
                        Node(nodeId: "node-0-5-3-5", frame: CGRect(x: 5, y: 0, width: 7, height: 1), children: []),
                        Node(nodeId: "node-0-5-3-6", frame: CGRect(x: 5, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-0-5-3-9", frame: CGRect(x: 2, y: 0, width: 5, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-0-5-4", frame: CGRect(x: 21, y: 2, width: 5, height: 4), children: [
                        Node(nodeId: "node-0-5-4-0", frame: CGRect(x: 2, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-0-5-4-1", frame: CGRect(x: 0, y: 0, width: 4, height: 3), children: []),
                        Node(nodeId: "node-0-5-4-2", frame: CGRect(x: 2, y: 0, width: 2, height: 2), children: [])
                    ])
                ]),
                Node(nodeId: "node-0-6", frame: CGRect(x: 1, y: 2, width: 39, height: 17), children: [
                    Node(nodeId: "node-0-6-0", frame: CGRect(x: 5, y: 10, width: 7, height: 5), children: [
                        Node(nodeId: "node-0-6-0-0", frame: CGRect(x: 2, y: 0, width: 3, height: 3), children: []),
                        Node(nodeId: "node-0-6-0-3", frame: CGRect(x: 1, y: 0, width: 2, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-0-6-1", frame: CGRect(x: 2, y: 2, width: 32, height: 14), children: [
                        Node(nodeId: "node-0-6-1-0", frame: CGRect(x: 20, y: 1, width: 11, height: 6), children: []),
                        Node(nodeId: "node-0-6-1-1", frame: CGRect(x: 1, y: 0, width: 18, height: 13), children: []),
                        Node(nodeId: "node-0-6-1-2", frame: CGRect(x: 16, y: 0, width: 10, height: 13), children: [])
                    ]),
                    Node(nodeId: "node-0-6-2", frame: CGRect(x: 4, y: 0, width: 10, height: 15), children: [
                        Node(nodeId: "node-0-6-2-1", frame: CGRect(x: 2, y: 0, width: 6, height: 14), children: []),
                        Node(nodeId: "node-0-6-2-3", frame: CGRect(x: 7, y: 4, width: 1, height: 8), children: []),
                        Node(nodeId: "node-0-6-2-4", frame: CGRect(x: 0, y: 0, width: 9, height: 11), children: []),
                        Node(nodeId: "node-0-6-2-5", frame: CGRect(x: 0, y: 10, width: 4, height: 4), children: []),
                        Node(nodeId: "node-0-6-2-6", frame: CGRect(x: 3, y: 0, width: 4, height: 14), children: []),
                        Node(nodeId: "node-0-6-2-7", frame: CGRect(x: 0, y: 7, width: 2, height: 3), children: [])
                    ])
                ]),
                Node(nodeId: "node-0-7", frame: CGRect(x: 4, y: 3, width: 31, height: 14), children: [
                    Node(nodeId: "node-0-7-0", frame: CGRect(x: 12, y: 3, width: 8, height: 7), children: [
                        Node(nodeId: "node-0-7-0-0", frame: CGRect(x: 0, y: 2, width: 7, height: 1), children: []),
                        Node(nodeId: "node-0-7-0-1", frame: CGRect(x: 1, y: 1, width: 3, height: 5), children: []),
                        Node(nodeId: "node-0-7-0-3", frame: CGRect(x: 0, y: 2, width: 1, height: 4), children: []),
                        Node(nodeId: "node-0-7-0-5", frame: CGRect(x: 5, y: 2, width: 1, height: 4), children: []),
                        Node(nodeId: "node-0-7-0-6", frame: CGRect(x: 2, y: 1, width: 2, height: 4), children: []),
                        Node(nodeId: "node-0-7-0-7", frame: CGRect(x: 5, y: 0, width: 2, height: 6), children: []),
                        Node(nodeId: "node-0-7-0-9", frame: CGRect(x: 0, y: 5, width: 5, height: 1), children: []),
                        Node(nodeId: "node-0-7-0-11", frame: CGRect(x: 0, y: 0, width: 7, height: 6), children: []),
                        Node(nodeId: "node-0-7-0-12", frame: CGRect(x: 3, y: 0, width: 3, height: 4), children: []),
                        Node(nodeId: "node-0-7-0-13", frame: CGRect(x: 1, y: 2, width: 6, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-0-7-1", frame: CGRect(x: 3, y: 7, width: 4, height: 1), children: [])
                ])
            ]),
            Node(nodeId: "node-1", frame: CGRect(x: 0, y: 3, width: 49, height: 33), children: [
                Node(nodeId: "node-1-0", frame: CGRect(x: 0, y: 0, width: 13, height: 24), children: [
                    Node(nodeId: "node-1-0-1", frame: CGRect(x: 7, y: 7, width: 4, height: 16), children: [
                        Node(nodeId: "node-1-0-1-0", frame: CGRect(x: 0, y: 2, width: 3, height: 13), children: []),
                        Node(nodeId: "node-1-0-1-1", frame: CGRect(x: 0, y: 1, width: 3, height: 9), children: []),
                        Node(nodeId: "node-1-0-1-2", frame: CGRect(x: 0, y: 2, width: 3, height: 13), children: []),
                        Node(nodeId: "node-1-0-1-3", frame: CGRect(x: 1, y: 1, width: 1, height: 7), children: []),
                        Node(nodeId: "node-1-0-1-4", frame: CGRect(x: 0, y: 5, width: 2, height: 3), children: []),
                        Node(nodeId: "node-1-0-1-5", frame: CGRect(x: 1, y: 12, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-0-1-6", frame: CGRect(x: 1, y: 5, width: 2, height: 4), children: []),
                        Node(nodeId: "node-1-0-1-7", frame: CGRect(x: 1, y: 9, width: 1, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-0-2", frame: CGRect(x: 7, y: 6, width: 4, height: 9), children: [
                        Node(nodeId: "node-1-0-2-1", frame: CGRect(x: 1, y: 0, width: 1, height: 6), children: []),
                        Node(nodeId: "node-1-0-2-2", frame: CGRect(x: 1, y: 3, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-0-2-3", frame: CGRect(x: 0, y: 5, width: 1, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-0-3", frame: CGRect(x: 1, y: 3, width: 7, height: 6), children: [
                        Node(nodeId: "node-1-0-3-0", frame: CGRect(x: 1, y: 1, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-0-3-3", frame: CGRect(x: 2, y: 0, width: 4, height: 5), children: []),
                        Node(nodeId: "node-1-0-3-4", frame: CGRect(x: 1, y: 0, width: 4, height: 3), children: []),
                        Node(nodeId: "node-1-0-3-5", frame: CGRect(x: 1, y: 1, width: 4, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-0-4", frame: CGRect(x: 0, y: 1, width: 12, height: 21), children: [
                        Node(nodeId: "node-1-0-4-0", frame: CGRect(x: 0, y: 0, width: 11, height: 16), children: []),
                        Node(nodeId: "node-1-0-4-1", frame: CGRect(x: 2, y: 0, width: 5, height: 18), children: []),
                        Node(nodeId: "node-1-0-4-2", frame: CGRect(x: 0, y: 0, width: 8, height: 19), children: []),
                        Node(nodeId: "node-1-0-4-3", frame: CGRect(x: 2, y: 0, width: 1, height: 18), children: []),
                        Node(nodeId: "node-1-0-4-4", frame: CGRect(x: 0, y: 3, width: 11, height: 17), children: []),
                        Node(nodeId: "node-1-0-4-5", frame: CGRect(x: 0, y: 17, width: 11, height: 1), children: []),
                        Node(nodeId: "node-1-0-4-6", frame: CGRect(x: 3, y: 9, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-0-4-7", frame: CGRect(x: 9, y: 12, width: 2, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-0-5", frame: CGRect(x: 2, y: 4, width: 3, height: 17), children: [
                        Node(nodeId: "node-1-0-5-1", frame: CGRect(x: 0, y: 2, width: 2, height: 10), children: []),
                        Node(nodeId: "node-1-0-5-3", frame: CGRect(x: 0, y: 0, width: 2, height: 13), children: []),
                        Node(nodeId: "node-1-0-5-5", frame: CGRect(x: 0, y: 2, width: 2, height: 11), children: []),
                        Node(nodeId: "node-1-0-5-7", frame: CGRect(x: 1, y: 12, width: 1, height: 4), children: []),
                        Node(nodeId: "node-1-0-5-8", frame: CGRect(x: 0, y: 6, width: 2, height: 5), children: []),
                        Node(nodeId: "node-1-0-5-9", frame: CGRect(x: 0, y: 4, width: 2, height: 12), children: []),
                        Node(nodeId: "node-1-0-5-10", frame: CGRect(x: 1, y: 0, width: 1, height: 7), children: [])
                    ]),
                    Node(nodeId: "node-1-0-6", frame: CGRect(x: 0, y: 0, width: 12, height: 22), children: []),
                    Node(nodeId: "node-1-0-7", frame: CGRect(x: 7, y: 3, width: 2, height: 15), children: [
                        Node(nodeId: "node-1-0-7-0", frame: CGRect(x: 0, y: 4, width: 1, height: 10), children: []),
                        Node(nodeId: "node-1-0-7-1", frame: CGRect(x: 0, y: 2, width: 1, height: 8), children: []),
                        Node(nodeId: "node-1-0-7-2", frame: CGRect(x: 0, y: 2, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-0-7-3", frame: CGRect(x: 0, y: 7, width: 1, height: 2), children: []),
                        Node(nodeId: "node-1-0-7-7", frame: CGRect(x: 0, y: 2, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-0-7-8", frame: CGRect(x: 0, y: 0, width: 1, height: 14), children: []),
                        Node(nodeId: "node-1-0-7-10", frame: CGRect(x: 0, y: 5, width: 1, height: 7), children: []),
                        Node(nodeId: "node-1-0-7-11", frame: CGRect(x: 0, y: 6, width: 1, height: 7), children: [])
                    ]),
                    Node(nodeId: "node-1-0-9", frame: CGRect(x: 6, y: 2, width: 2, height: 16), children: [
                        Node(nodeId: "node-1-0-9-0", frame: CGRect(x: 0, y: 4, width: 1, height: 8), children: []),
                        Node(nodeId: "node-1-0-9-5", frame: CGRect(x: 0, y: 4, width: 1, height: 6), children: []),
                        Node(nodeId: "node-1-0-9-8", frame: CGRect(x: 0, y: 7, width: 1, height: 8), children: [])
                    ])
                ]),
                Node(nodeId: "node-1-1", frame: CGRect(x: 4, y: 4, width: 33, height: 28), children: [
                    Node(nodeId: "node-1-1-0", frame: CGRect(x: 0, y: 12, width: 13, height: 13), children: [
                        Node(nodeId: "node-1-1-0-1", frame: CGRect(x: 1, y: 2, width: 10, height: 8), children: []),
                        Node(nodeId: "node-1-1-0-2", frame: CGRect(x: 6, y: 0, width: 6, height: 10), children: []),
                        Node(nodeId: "node-1-1-0-3", frame: CGRect(x: 0, y: 2, width: 12, height: 10), children: [])
                    ]),
                    Node(nodeId: "node-1-1-1", frame: CGRect(x: 23, y: 1, width: 8, height: 26), children: [
                        Node(nodeId: "node-1-1-1-0", frame: CGRect(x: 1, y: 11, width: 6, height: 10), children: []),
                        Node(nodeId: "node-1-1-1-1", frame: CGRect(x: 3, y: 3, width: 3, height: 15), children: []),
                        Node(nodeId: "node-1-1-1-2", frame: CGRect(x: 0, y: 15, width: 4, height: 8), children: []),
                        Node(nodeId: "node-1-1-1-3", frame: CGRect(x: 1, y: 18, width: 6, height: 3), children: []),
                        Node(nodeId: "node-1-1-1-4", frame: CGRect(x: 1, y: 14, width: 6, height: 3), children: []),
                        Node(nodeId: "node-1-1-1-5", frame: CGRect(x: 0, y: 12, width: 2, height: 12), children: []),
                        Node(nodeId: "node-1-1-1-6", frame: CGRect(x: 1, y: 3, width: 6, height: 2), children: []),
                        Node(nodeId: "node-1-1-1-7", frame: CGRect(x: 0, y: 12, width: 7, height: 7), children: []),
                        Node(nodeId: "node-1-1-1-8", frame: CGRect(x: 0, y: 0, width: 7, height: 25), children: []),
                        Node(nodeId: "node-1-1-1-9", frame: CGRect(x: 0, y: 4, width: 6, height: 21), children: []),
                        Node(nodeId: "node-1-1-1-12", frame: CGRect(x: 1, y: 6, width: 5, height: 14), children: [])
                    ]),
                    Node(nodeId: "node-1-1-2", frame: CGRect(x: 11, y: 3, width: 21, height: 21), children: [
                        Node(nodeId: "node-1-1-2-0", frame: CGRect(x: 3, y: 0, width: 14, height: 20), children: []),
                        Node(nodeId: "node-1-1-2-1", frame: CGRect(x: 1, y: 0, width: 4, height: 13), children: []),
                        Node(nodeId: "node-1-1-2-2", frame: CGRect(x: 4, y: 7, width: 15, height: 4), children: []),
                        Node(nodeId: "node-1-1-2-3", frame: CGRect(x: 1, y: 5, width: 13, height: 8), children: []),
                        Node(nodeId: "node-1-1-2-4", frame: CGRect(x: 0, y: 13, width: 5, height: 7), children: []),
                        Node(nodeId: "node-1-1-2-5", frame: CGRect(x: 0, y: 8, width: 20, height: 5), children: []),
                        Node(nodeId: "node-1-1-2-6", frame: CGRect(x: 13, y: 6, width: 6, height: 12), children: []),
                        Node(nodeId: "node-1-1-2-7", frame: CGRect(x: 17, y: 7, width: 2, height: 7), children: [])
                    ]),
                    Node(nodeId: "node-1-1-3", frame: CGRect(x: 8, y: 0, width: 18, height: 19), children: [
                        Node(nodeId: "node-1-1-3-0", frame: CGRect(x: 1, y: 0, width: 14, height: 8), children: []),
                        Node(nodeId: "node-1-1-3-1", frame: CGRect(x: 1, y: 7, width: 12, height: 9), children: []),
                        Node(nodeId: "node-1-1-3-2", frame: CGRect(x: 0, y: 5, width: 16, height: 13), children: []),
                        Node(nodeId: "node-1-1-3-3", frame: CGRect(x: 6, y: 5, width: 10, height: 11), children: []),
                        Node(nodeId: "node-1-1-3-4", frame: CGRect(x: 0, y: 4, width: 10, height: 14), children: []),
                        Node(nodeId: "node-1-1-3-5", frame: CGRect(x: 0, y: 12, width: 9, height: 4), children: []),
                        Node(nodeId: "node-1-1-3-7", frame: CGRect(x: 0, y: 7, width: 17, height: 11), children: []),
                        Node(nodeId: "node-1-1-3-8", frame: CGRect(x: 14, y: 0, width: 2, height: 10), children: []),
                        Node(nodeId: "node-1-1-3-9", frame: CGRect(x: 0, y: 6, width: 13, height: 5), children: []),
                        Node(nodeId: "node-1-1-3-10", frame: CGRect(x: 8, y: 1, width: 6, height: 16), children: [])
                    ]),
                    Node(nodeId: "node-1-1-4", frame: CGRect(x: 9, y: 1, width: 3, height: 22), children: [
                        Node(nodeId: "node-1-1-4-0", frame: CGRect(x: 0, y: 4, width: 2, height: 14), children: []),
                        Node(nodeId: "node-1-1-4-1", frame: CGRect(x: 1, y: 3, width: 1, height: 14), children: []),
                        Node(nodeId: "node-1-1-4-2", frame: CGRect(x: 0, y: 6, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-1-4-3", frame: CGRect(x: 1, y: 0, width: 1, height: 19), children: []),
                        Node(nodeId: "node-1-1-4-4", frame: CGRect(x: 0, y: 2, width: 2, height: 10), children: []),
                        Node(nodeId: "node-1-1-4-5", frame: CGRect(x: 0, y: 1, width: 2, height: 12), children: []),
                        Node(nodeId: "node-1-1-4-9", frame: CGRect(x: 1, y: 3, width: 1, height: 16), children: [])
                    ]),
                    Node(nodeId: "node-1-1-5", frame: CGRect(x: 9, y: 5, width: 16, height: 8), children: [
                        Node(nodeId: "node-1-1-5-0", frame: CGRect(x: 8, y: 0, width: 7, height: 7), children: []),
                        Node(nodeId: "node-1-1-5-1", frame: CGRect(x: 12, y: 1, width: 3, height: 6), children: []),
                        Node(nodeId: "node-1-1-5-2", frame: CGRect(x: 5, y: 1, width: 6, height: 4), children: []),
                        Node(nodeId: "node-1-1-5-3", frame: CGRect(x: 4, y: 0, width: 11, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-1-6", frame: CGRect(x: 0, y: 17, width: 27, height: 1), children: []),
                    Node(nodeId: "node-1-1-7", frame: CGRect(x: 3, y: 10, width: 2, height: 5), children: [
                        Node(nodeId: "node-1-1-7-1", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-1-7-2", frame: CGRect(x: 0, y: 1, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-1-7-3", frame: CGRect(x: 0, y: 2, width: 1, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-1-8", frame: CGRect(x: 16, y: 0, width: 15, height: 27), children: [
                        Node(nodeId: "node-1-1-8-0", frame: CGRect(x: 8, y: 0, width: 4, height: 16), children: [])
                    ]),
                    Node(nodeId: "node-1-1-9", frame: CGRect(x: 2, y: 9, width: 15, height: 14), children: [
                        Node(nodeId: "node-1-1-9-0", frame: CGRect(x: 5, y: 0, width: 8, height: 12), children: []),
                        Node(nodeId: "node-1-1-9-1", frame: CGRect(x: 6, y: 0, width: 1, height: 6), children: []),
                        Node(nodeId: "node-1-1-9-2", frame: CGRect(x: 4, y: 2, width: 1, height: 11), children: []),
                        Node(nodeId: "node-1-1-9-3", frame: CGRect(x: 0, y: 0, width: 8, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-1-10", frame: CGRect(x: 15, y: 10, width: 8, height: 7), children: [
                        Node(nodeId: "node-1-1-10-0", frame: CGRect(x: 0, y: 5, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-1-10-1", frame: CGRect(x: 1, y: 1, width: 6, height: 5), children: []),
                        Node(nodeId: "node-1-1-10-2", frame: CGRect(x: 0, y: 0, width: 6, height: 6), children: []),
                        Node(nodeId: "node-1-1-10-3", frame: CGRect(x: 4, y: 1, width: 2, height: 3), children: []),
                        Node(nodeId: "node-1-1-10-5", frame: CGRect(x: 0, y: 3, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-1-10-6", frame: CGRect(x: 6, y: 0, width: 1, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-1-1-11", frame: CGRect(x: 5, y: 8, width: 15, height: 19), children: [
                        Node(nodeId: "node-1-1-11-0", frame: CGRect(x: 1, y: 7, width: 13, height: 9), children: []),
                        Node(nodeId: "node-1-1-11-1", frame: CGRect(x: 2, y: 8, width: 5, height: 7), children: []),
                        Node(nodeId: "node-1-1-11-2", frame: CGRect(x: 4, y: 2, width: 6, height: 16), children: [])
                    ]),
                    Node(nodeId: "node-1-1-12", frame: CGRect(x: 9, y: 0, width: 1, height: 20), children: [])
                ]),
                Node(nodeId: "node-1-2", frame: CGRect(x: 31, y: 6, width: 3, height: 11), children: [
                    Node(nodeId: "node-1-2-1", frame: CGRect(x: 0, y: 0, width: 2, height: 10), children: [
                        Node(nodeId: "node-1-2-1-2", frame: CGRect(x: 0, y: 4, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-2-1-3", frame: CGRect(x: 0, y: 0, width: 1, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-2-3", frame: CGRect(x: 0, y: 0, width: 1, height: 8), children: []),
                    Node(nodeId: "node-1-2-4", frame: CGRect(x: 1, y: 6, width: 1, height: 2), children: []),
                    Node(nodeId: "node-1-2-5", frame: CGRect(x: 0, y: 6, width: 2, height: 2), children: [
                        Node(nodeId: "node-1-2-5-2", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-2-6", frame: CGRect(x: 0, y: 5, width: 2, height: 4), children: [
                        Node(nodeId: "node-1-2-6-0", frame: CGRect(x: 0, y: 1, width: 1, height: 2), children: []),
                        Node(nodeId: "node-1-2-6-7", frame: CGRect(x: 0, y: 0, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-2-6-12", frame: CGRect(x: 0, y: 0, width: 1, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-2-8", frame: CGRect(x: 0, y: 3, width: 2, height: 2), children: []),
                    Node(nodeId: "node-1-2-9", frame: CGRect(x: 1, y: 0, width: 1, height: 8), children: []),
                    Node(nodeId: "node-1-2-10", frame: CGRect(x: 0, y: 0, width: 2, height: 8), children: [
                        Node(nodeId: "node-1-2-10-0", frame: CGRect(x: 0, y: 2, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-2-10-2", frame: CGRect(x: 0, y: 0, width: 1, height: 7), children: []),
                        Node(nodeId: "node-1-2-10-3", frame: CGRect(x: 0, y: 1, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-2-10-5", frame: CGRect(x: 0, y: 0, width: 1, height: 7), children: [])
                    ])
                ]),
                Node(nodeId: "node-1-3", frame: CGRect(x: 14, y: 0, width: 22, height: 32), children: [
                    Node(nodeId: "node-1-3-0", frame: CGRect(x: 1, y: 0, width: 8, height: 31), children: [
                        Node(nodeId: "node-1-3-0-0", frame: CGRect(x: 0, y: 14, width: 7, height: 5), children: []),
                        Node(nodeId: "node-1-3-0-1", frame: CGRect(x: 1, y: 3, width: 6, height: 11), children: []),
                        Node(nodeId: "node-1-3-0-2", frame: CGRect(x: 5, y: 7, width: 2, height: 17), children: []),
                        Node(nodeId: "node-1-3-0-4", frame: CGRect(x: 3, y: 3, width: 4, height: 18), children: []),
                        Node(nodeId: "node-1-3-0-5", frame: CGRect(x: 3, y: 16, width: 2, height: 6), children: []),
                        Node(nodeId: "node-1-3-0-6", frame: CGRect(x: 1, y: 2, width: 2, height: 19), children: []),
                        Node(nodeId: "node-1-3-0-7", frame: CGRect(x: 1, y: 0, width: 1, height: 21), children: []),
                        Node(nodeId: "node-1-3-0-8", frame: CGRect(x: 0, y: 9, width: 7, height: 20), children: []),
                        Node(nodeId: "node-1-3-0-10", frame: CGRect(x: 1, y: 27, width: 6, height: 1), children: []),
                        Node(nodeId: "node-1-3-0-11", frame: CGRect(x: 0, y: 2, width: 7, height: 1), children: []),
                        Node(nodeId: "node-1-3-0-12", frame: CGRect(x: 1, y: 4, width: 2, height: 20), children: []),
                        Node(nodeId: "node-1-3-0-13", frame: CGRect(x: 1, y: 20, width: 3, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-3-1", frame: CGRect(x: 1, y: 0, width: 20, height: 29), children: [
                        Node(nodeId: "node-1-3-1-1", frame: CGRect(x: 6, y: 5, width: 4, height: 20), children: [])
                    ]),
                    Node(nodeId: "node-1-3-2", frame: CGRect(x: 3, y: 0, width: 7, height: 30), children: [
                        Node(nodeId: "node-1-3-2-0", frame: CGRect(x: 0, y: 24, width: 5, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-3-3", frame: CGRect(x: 5, y: 11, width: 1, height: 14), children: []),
                    Node(nodeId: "node-1-3-4", frame: CGRect(x: 10, y: 11, width: 9, height: 14), children: [
                        Node(nodeId: "node-1-3-4-0", frame: CGRect(x: 1, y: 1, width: 1, height: 12), children: []),
                        Node(nodeId: "node-1-3-4-1", frame: CGRect(x: 5, y: 2, width: 3, height: 9), children: []),
                        Node(nodeId: "node-1-3-4-2", frame: CGRect(x: 1, y: 10, width: 7, height: 1), children: []),
                        Node(nodeId: "node-1-3-4-4", frame: CGRect(x: 3, y: 3, width: 1, height: 10), children: []),
                        Node(nodeId: "node-1-3-4-5", frame: CGRect(x: 3, y: 10, width: 5, height: 3), children: []),
                        Node(nodeId: "node-1-3-4-7", frame: CGRect(x: 1, y: 0, width: 2, height: 8), children: [])
                    ]),
                    Node(nodeId: "node-1-3-5", frame: CGRect(x: 5, y: 3, width: 11, height: 10), children: [
                        Node(nodeId: "node-1-3-5-0", frame: CGRect(x: 1, y: 1, width: 8, height: 6), children: []),
                        Node(nodeId: "node-1-3-5-2", frame: CGRect(x: 0, y: 3, width: 9, height: 1), children: []),
                        Node(nodeId: "node-1-3-5-3", frame: CGRect(x: 2, y: 0, width: 5, height: 3), children: []),
                        Node(nodeId: "node-1-3-5-4", frame: CGRect(x: 2, y: 4, width: 3, height: 5), children: []),
                        Node(nodeId: "node-1-3-5-5", frame: CGRect(x: 0, y: 4, width: 8, height: 4), children: []),
                        Node(nodeId: "node-1-3-5-6", frame: CGRect(x: 2, y: 3, width: 8, height: 6), children: []),
                        Node(nodeId: "node-1-3-5-7", frame: CGRect(x: 4, y: 3, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-3-5-8", frame: CGRect(x: 0, y: 1, width: 1, height: 7), children: []),
                        Node(nodeId: "node-1-3-5-9", frame: CGRect(x: 6, y: 4, width: 2, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-3-8", frame: CGRect(x: 10, y: 15, width: 1, height: 16), children: []),
                    Node(nodeId: "node-1-3-9", frame: CGRect(x: 13, y: 0, width: 3, height: 30), children: [
                        Node(nodeId: "node-1-3-9-0", frame: CGRect(x: 1, y: 2, width: 1, height: 24), children: [])
                    ]),
                    Node(nodeId: "node-1-3-10", frame: CGRect(x: 4, y: 22, width: 14, height: 5), children: [
                        Node(nodeId: "node-1-3-10-0", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-3-10-1", frame: CGRect(x: 2, y: 0, width: 11, height: 3), children: []),
                        Node(nodeId: "node-1-3-10-3", frame: CGRect(x: 1, y: 0, width: 9, height: 3), children: []),
                        Node(nodeId: "node-1-3-10-4", frame: CGRect(x: 0, y: 1, width: 9, height: 3), children: []),
                        Node(nodeId: "node-1-3-10-5", frame: CGRect(x: 0, y: 0, width: 10, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-3-11", frame: CGRect(x: 8, y: 24, width: 13, height: 5), children: []),
                    Node(nodeId: "node-1-3-12", frame: CGRect(x: 0, y: 0, width: 21, height: 26), children: [
                        Node(nodeId: "node-1-3-12-0", frame: CGRect(x: 2, y: 0, width: 11, height: 25), children: []),
                        Node(nodeId: "node-1-3-12-1", frame: CGRect(x: 9, y: 8, width: 9, height: 7), children: []),
                        Node(nodeId: "node-1-3-12-2", frame: CGRect(x: 1, y: 9, width: 14, height: 13), children: []),
                        Node(nodeId: "node-1-3-12-3", frame: CGRect(x: 16, y: 2, width: 4, height: 22), children: []),
                        Node(nodeId: "node-1-3-12-4", frame: CGRect(x: 13, y: 0, width: 5, height: 24), children: []),
                        Node(nodeId: "node-1-3-12-5", frame: CGRect(x: 1, y: 1, width: 16, height: 20), children: []),
                        Node(nodeId: "node-1-3-12-6", frame: CGRect(x: 4, y: 1, width: 13, height: 9), children: []),
                        Node(nodeId: "node-1-3-12-7", frame: CGRect(x: 5, y: 8, width: 15, height: 14), children: []),
                        Node(nodeId: "node-1-3-12-8", frame: CGRect(x: 10, y: 15, width: 3, height: 6), children: []),
                        Node(nodeId: "node-1-3-12-9", frame: CGRect(x: 2, y: 14, width: 12, height: 9), children: [])
                    ]),
                    Node(nodeId: "node-1-3-13", frame: CGRect(x: 1, y: 0, width: 19, height: 1), children: [])
                ]),
                Node(nodeId: "node-1-4", frame: CGRect(x: 16, y: 26, width: 31, height: 6), children: [
                    Node(nodeId: "node-1-4-0", frame: CGRect(x: 3, y: 1, width: 26, height: 2), children: [
                        Node(nodeId: "node-1-4-0-0", frame: CGRect(x: 16, y: 0, width: 5, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-4-1", frame: CGRect(x: 4, y: 0, width: 21, height: 5), children: [
                        Node(nodeId: "node-1-4-1-0", frame: CGRect(x: 1, y: 0, width: 14, height: 3), children: []),
                        Node(nodeId: "node-1-4-1-1", frame: CGRect(x: 1, y: 0, width: 15, height: 3), children: []),
                        Node(nodeId: "node-1-4-1-2", frame: CGRect(x: 19, y: 2, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-4-1-3", frame: CGRect(x: 6, y: 0, width: 13, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-4-2", frame: CGRect(x: 20, y: 2, width: 8, height: 3), children: [
                        Node(nodeId: "node-1-4-2-0", frame: CGRect(x: 0, y: 0, width: 7, height: 1), children: []),
                        Node(nodeId: "node-1-4-2-2", frame: CGRect(x: 0, y: 1, width: 6, height: 1), children: []),
                        Node(nodeId: "node-1-4-2-3", frame: CGRect(x: 2, y: 0, width: 5, height: 2), children: []),
                        Node(nodeId: "node-1-4-2-4", frame: CGRect(x: 1, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-4-2-5", frame: CGRect(x: 0, y: 0, width: 7, height: 1), children: []),
                        Node(nodeId: "node-1-4-2-6", frame: CGRect(x: 0, y: 1, width: 5, height: 1), children: []),
                        Node(nodeId: "node-1-4-2-7", frame: CGRect(x: 0, y: 0, width: 5, height: 1), children: []),
                        Node(nodeId: "node-1-4-2-8", frame: CGRect(x: 2, y: 0, width: 3, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-4-3", frame: CGRect(x: 1, y: 2, width: 28, height: 1), children: []),
                    Node(nodeId: "node-1-4-4", frame: CGRect(x: 3, y: 0, width: 4, height: 4), children: [
                        Node(nodeId: "node-1-4-4-0", frame: CGRect(x: 1, y: 0, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-4-4-1", frame: CGRect(x: 0, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-4-4-4", frame: CGRect(x: 0, y: 1, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-4-4-6", frame: CGRect(x: 0, y: 1, width: 3, height: 2), children: []),
                        Node(nodeId: "node-1-4-4-7", frame: CGRect(x: 2, y: 0, width: 1, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-4-5", frame: CGRect(x: 7, y: 0, width: 7, height: 2), children: [
                        Node(nodeId: "node-1-4-5-1", frame: CGRect(x: 0, y: 0, width: 5, height: 1), children: []),
                        Node(nodeId: "node-1-4-5-2", frame: CGRect(x: 1, y: 0, width: 5, height: 1), children: []),
                        Node(nodeId: "node-1-4-5-3", frame: CGRect(x: 2, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-4-5-4", frame: CGRect(x: 3, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-4-5-5", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-4-5-9", frame: CGRect(x: 2, y: 0, width: 4, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-4-6", frame: CGRect(x: 29, y: 0, width: 1, height: 5), children: []),
                    Node(nodeId: "node-1-4-7", frame: CGRect(x: 1, y: 0, width: 11, height: 4), children: [
                        Node(nodeId: "node-1-4-7-0", frame: CGRect(x: 2, y: 0, width: 6, height: 1), children: []),
                        Node(nodeId: "node-1-4-7-1", frame: CGRect(x: 7, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-4-7-2", frame: CGRect(x: 3, y: 0, width: 6, height: 3), children: []),
                        Node(nodeId: "node-1-4-7-3", frame: CGRect(x: 3, y: 0, width: 6, height: 3), children: []),
                        Node(nodeId: "node-1-4-7-6", frame: CGRect(x: 7, y: 0, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-4-7-7", frame: CGRect(x: 0, y: 0, width: 10, height: 3), children: [])
                    ])
                ]),
                Node(nodeId: "node-1-5", frame: CGRect(x: 6, y: 4, width: 36, height: 26), children: [
                    Node(nodeId: "node-1-5-0", frame: CGRect(x: 11, y: 2, width: 16, height: 4), children: [
                        Node(nodeId: "node-1-5-0-0", frame: CGRect(x: 0, y: 1, width: 9, height: 1), children: []),
                        Node(nodeId: "node-1-5-0-3", frame: CGRect(x: 2, y: 0, width: 5, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-5-1", frame: CGRect(x: 29, y: 0, width: 5, height: 20), children: [
                        Node(nodeId: "node-1-5-1-0", frame: CGRect(x: 1, y: 2, width: 3, height: 6), children: []),
                        Node(nodeId: "node-1-5-1-1", frame: CGRect(x: 0, y: 5, width: 3, height: 9), children: []),
                        Node(nodeId: "node-1-5-1-3", frame: CGRect(x: 1, y: 2, width: 2, height: 17), children: []),
                        Node(nodeId: "node-1-5-1-4", frame: CGRect(x: 0, y: 4, width: 4, height: 15), children: []),
                        Node(nodeId: "node-1-5-1-5", frame: CGRect(x: 1, y: 5, width: 2, height: 11), children: []),
                        Node(nodeId: "node-1-5-1-6", frame: CGRect(x: 2, y: 3, width: 1, height: 14), children: []),
                        Node(nodeId: "node-1-5-1-7", frame: CGRect(x: 0, y: 3, width: 3, height: 16), children: []),
                        Node(nodeId: "node-1-5-1-8", frame: CGRect(x: 0, y: 0, width: 4, height: 2), children: []),
                        Node(nodeId: "node-1-5-1-9", frame: CGRect(x: 1, y: 1, width: 3, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-5-2", frame: CGRect(x: 17, y: 4, width: 3, height: 19), children: [
                        Node(nodeId: "node-1-5-2-4", frame: CGRect(x: 0, y: 12, width: 2, height: 5), children: []),
                        Node(nodeId: "node-1-5-2-7", frame: CGRect(x: 1, y: 1, width: 1, height: 17), children: []),
                        Node(nodeId: "node-1-5-2-8", frame: CGRect(x: 1, y: 0, width: 1, height: 12), children: []),
                        Node(nodeId: "node-1-5-2-9", frame: CGRect(x: 1, y: 5, width: 1, height: 11), children: []),
                        Node(nodeId: "node-1-5-2-11", frame: CGRect(x: 0, y: 1, width: 2, height: 17), children: [])
                    ]),
                    Node(nodeId: "node-1-5-3", frame: CGRect(x: 0, y: 2, width: 8, height: 3), children: [
                        Node(nodeId: "node-1-5-3-0", frame: CGRect(x: 0, y: 1, width: 7, height: 1), children: []),
                        Node(nodeId: "node-1-5-3-3", frame: CGRect(x: 0, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-5-3-4", frame: CGRect(x: 2, y: 0, width: 4, height: 2), children: []),
                        Node(nodeId: "node-1-5-3-6", frame: CGRect(x: 1, y: 0, width: 2, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-5-4", frame: CGRect(x: 3, y: 1, width: 28, height: 23), children: [
                        Node(nodeId: "node-1-5-4-0", frame: CGRect(x: 4, y: 12, width: 23, height: 6), children: []),
                        Node(nodeId: "node-1-5-4-1", frame: CGRect(x: 4, y: 14, width: 14, height: 6), children: []),
                        Node(nodeId: "node-1-5-4-2", frame: CGRect(x: 1, y: 0, width: 19, height: 12), children: [])
                    ]),
                    Node(nodeId: "node-1-5-5", frame: CGRect(x: 2, y: 1, width: 25, height: 23), children: [
                        Node(nodeId: "node-1-5-5-0", frame: CGRect(x: 4, y: 8, width: 15, height: 11), children: []),
                        Node(nodeId: "node-1-5-5-1", frame: CGRect(x: 0, y: 2, width: 8, height: 17), children: []),
                        Node(nodeId: "node-1-5-5-2", frame: CGRect(x: 2, y: 9, width: 6, height: 4), children: []),
                        Node(nodeId: "node-1-5-5-3", frame: CGRect(x: 10, y: 3, width: 10, height: 12), children: []),
                        Node(nodeId: "node-1-5-5-4", frame: CGRect(x: 7, y: 1, width: 10, height: 8), children: []),
                        Node(nodeId: "node-1-5-5-5", frame: CGRect(x: 2, y: 2, width: 20, height: 20), children: []),
                        Node(nodeId: "node-1-5-5-7", frame: CGRect(x: 10, y: 8, width: 3, height: 13), children: []),
                        Node(nodeId: "node-1-5-5-8", frame: CGRect(x: 5, y: 4, width: 1, height: 14), children: [])
                    ]),
                    Node(nodeId: "node-1-5-6", frame: CGRect(x: 0, y: 13, width: 35, height: 11), children: [
                        Node(nodeId: "node-1-5-6-0", frame: CGRect(x: 14, y: 1, width: 12, height: 6), children: []),
                        Node(nodeId: "node-1-5-6-1", frame: CGRect(x: 13, y: 7, width: 19, height: 2), children: []),
                        Node(nodeId: "node-1-5-6-2", frame: CGRect(x: 3, y: 4, width: 28, height: 5), children: []),
                        Node(nodeId: "node-1-5-6-3", frame: CGRect(x: 9, y: 2, width: 19, height: 5), children: []),
                        Node(nodeId: "node-1-5-6-4", frame: CGRect(x: 2, y: 5, width: 29, height: 2), children: []),
                        Node(nodeId: "node-1-5-6-5", frame: CGRect(x: 14, y: 8, width: 19, height: 2), children: []),
                        Node(nodeId: "node-1-5-6-6", frame: CGRect(x: 6, y: 0, width: 21, height: 10), children: []),
                        Node(nodeId: "node-1-5-6-7", frame: CGRect(x: 2, y: 3, width: 21, height: 1), children: []),
                        Node(nodeId: "node-1-5-6-8", frame: CGRect(x: 6, y: 1, width: 26, height: 5), children: []),
                        Node(nodeId: "node-1-5-6-9", frame: CGRect(x: 14, y: 4, width: 16, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-1-5-7", frame: CGRect(x: 0, y: 11, width: 35, height: 13), children: [
                        Node(nodeId: "node-1-5-7-0", frame: CGRect(x: 13, y: 3, width: 19, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-5-8", frame: CGRect(x: 0, y: 3, width: 13, height: 5), children: []),
                    Node(nodeId: "node-1-5-9", frame: CGRect(x: 2, y: 12, width: 24, height: 6), children: [
                        Node(nodeId: "node-1-5-9-0", frame: CGRect(x: 9, y: 3, width: 10, height: 2), children: []),
                        Node(nodeId: "node-1-5-9-1", frame: CGRect(x: 15, y: 0, width: 7, height: 5), children: []),
                        Node(nodeId: "node-1-5-9-3", frame: CGRect(x: 2, y: 1, width: 18, height: 3), children: []),
                        Node(nodeId: "node-1-5-9-5", frame: CGRect(x: 0, y: 0, width: 17, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-1-5-10", frame: CGRect(x: 17, y: 13, width: 6, height: 2), children: [
                        Node(nodeId: "node-1-5-10-0", frame: CGRect(x: 1, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-5-10-3", frame: CGRect(x: 0, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-5-10-5", frame: CGRect(x: 0, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-5-10-9", frame: CGRect(x: 2, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-5-10-11", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-5-11", frame: CGRect(x: 15, y: 2, width: 14, height: 18), children: [
                        Node(nodeId: "node-1-5-11-0", frame: CGRect(x: 9, y: 0, width: 3, height: 17), children: []),
                        Node(nodeId: "node-1-5-11-1", frame: CGRect(x: 0, y: 6, width: 4, height: 6), children: []),
                        Node(nodeId: "node-1-5-11-2", frame: CGRect(x: 0, y: 0, width: 8, height: 13), children: []),
                        Node(nodeId: "node-1-5-11-4", frame: CGRect(x: 0, y: 10, width: 12, height: 2), children: []),
                        Node(nodeId: "node-1-5-11-5", frame: CGRect(x: 0, y: 0, width: 13, height: 7), children: []),
                        Node(nodeId: "node-1-5-11-6", frame: CGRect(x: 2, y: 11, width: 3, height: 3), children: []),
                        Node(nodeId: "node-1-5-11-7", frame: CGRect(x: 6, y: 1, width: 5, height: 16), children: []),
                        Node(nodeId: "node-1-5-11-8", frame: CGRect(x: 2, y: 7, width: 10, height: 1), children: []),
                        Node(nodeId: "node-1-5-11-9", frame: CGRect(x: 0, y: 10, width: 8, height: 4), children: []),
                        Node(nodeId: "node-1-5-11-10", frame: CGRect(x: 4, y: 6, width: 7, height: 9), children: []),
                        Node(nodeId: "node-1-5-11-11", frame: CGRect(x: 0, y: 1, width: 10, height: 15), children: []),
                        Node(nodeId: "node-1-5-11-12", frame: CGRect(x: 1, y: 3, width: 12, height: 2), children: []),
                        Node(nodeId: "node-1-5-11-13", frame: CGRect(x: 2, y: 1, width: 1, height: 13), children: [])
                    ]),
                    Node(nodeId: "node-1-5-12", frame: CGRect(x: 1, y: 3, width: 32, height: 20), children: [
                        Node(nodeId: "node-1-5-12-0", frame: CGRect(x: 1, y: 5, width: 23, height: 13), children: []),
                        Node(nodeId: "node-1-5-12-1", frame: CGRect(x: 1, y: 0, width: 30, height: 19), children: [])
                    ]),
                    Node(nodeId: "node-1-5-13", frame: CGRect(x: 13, y: 3, width: 22, height: 4), children: [
                        Node(nodeId: "node-1-5-13-0", frame: CGRect(x: 15, y: 0, width: 4, height: 3), children: []),
                        Node(nodeId: "node-1-5-13-3", frame: CGRect(x: 2, y: 0, width: 7, height: 1), children: []),
                        Node(nodeId: "node-1-5-13-5", frame: CGRect(x: 3, y: 1, width: 11, height: 1), children: []),
                        Node(nodeId: "node-1-5-13-6", frame: CGRect(x: 0, y: 2, width: 21, height: 1), children: []),
                        Node(nodeId: "node-1-5-13-8", frame: CGRect(x: 5, y: 0, width: 16, height: 2), children: []),
                        Node(nodeId: "node-1-5-13-9", frame: CGRect(x: 0, y: 0, width: 19, height: 3), children: [])
                    ])
                ]),
                Node(nodeId: "node-1-6", frame: CGRect(x: 21, y: 0, width: 20, height: 10), children: [
                    Node(nodeId: "node-1-6-0", frame: CGRect(x: 4, y: 1, width: 3, height: 8), children: [
                        Node(nodeId: "node-1-6-0-0", frame: CGRect(x: 0, y: 5, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-6-0-1", frame: CGRect(x: 0, y: 3, width: 2, height: 3), children: []),
                        Node(nodeId: "node-1-6-0-4", frame: CGRect(x: 0, y: 0, width: 1, height: 2), children: []),
                        Node(nodeId: "node-1-6-0-6", frame: CGRect(x: 0, y: 1, width: 2, height: 3), children: []),
                        Node(nodeId: "node-1-6-0-9", frame: CGRect(x: 0, y: 0, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-6-0-12", frame: CGRect(x: 0, y: 3, width: 2, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-1-6-1", frame: CGRect(x: 0, y: 2, width: 18, height: 5), children: [
                        Node(nodeId: "node-1-6-1-0", frame: CGRect(x: 3, y: 1, width: 7, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-6-2", frame: CGRect(x: 1, y: 4, width: 16, height: 4), children: [
                        Node(nodeId: "node-1-6-2-1", frame: CGRect(x: 12, y: 0, width: 2, height: 2), children: []),
                        Node(nodeId: "node-1-6-2-2", frame: CGRect(x: 1, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-6-2-3", frame: CGRect(x: 2, y: 2, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-6-2-4", frame: CGRect(x: 3, y: 1, width: 3, height: 2), children: []),
                        Node(nodeId: "node-1-6-2-5", frame: CGRect(x: 1, y: 0, width: 11, height: 1), children: []),
                        Node(nodeId: "node-1-6-2-6", frame: CGRect(x: 6, y: 1, width: 9, height: 1), children: []),
                        Node(nodeId: "node-1-6-2-7", frame: CGRect(x: 10, y: 0, width: 2, height: 3), children: []),
                        Node(nodeId: "node-1-6-2-8", frame: CGRect(x: 9, y: 1, width: 6, height: 2), children: []),
                        Node(nodeId: "node-1-6-2-10", frame: CGRect(x: 0, y: 1, width: 15, height: 1), children: []),
                        Node(nodeId: "node-1-6-2-11", frame: CGRect(x: 8, y: 1, width: 6, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-6-3", frame: CGRect(x: 1, y: 0, width: 12, height: 5), children: [
                        Node(nodeId: "node-1-6-3-0", frame: CGRect(x: 4, y: 2, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-6-3-1", frame: CGRect(x: 0, y: 0, width: 11, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-6-4", frame: CGRect(x: 0, y: 5, width: 18, height: 2), children: [
                        Node(nodeId: "node-1-6-4-0", frame: CGRect(x: 6, y: 0, width: 5, height: 1), children: []),
                        Node(nodeId: "node-1-6-4-1", frame: CGRect(x: 1, y: 0, width: 11, height: 1), children: []),
                        Node(nodeId: "node-1-6-4-2", frame: CGRect(x: 1, y: 0, width: 13, height: 1), children: []),
                        Node(nodeId: "node-1-6-4-3", frame: CGRect(x: 2, y: 0, width: 13, height: 1), children: []),
                        Node(nodeId: "node-1-6-4-4", frame: CGRect(x: 1, y: 0, width: 16, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-6-5", frame: CGRect(x: 11, y: 3, width: 6, height: 5), children: [
                        Node(nodeId: "node-1-6-5-0", frame: CGRect(x: 2, y: 1, width: 3, height: 3), children: []),
                        Node(nodeId: "node-1-6-5-1", frame: CGRect(x: 1, y: 3, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-6-5-2", frame: CGRect(x: 2, y: 0, width: 2, height: 4), children: []),
                        Node(nodeId: "node-1-6-5-3", frame: CGRect(x: 3, y: 1, width: 1, height: 3), children: [])
                    ]),
                    Node(nodeId: "node-1-6-8", frame: CGRect(x: 0, y: 0, width: 17, height: 9), children: [
                        Node(nodeId: "node-1-6-8-0", frame: CGRect(x: 12, y: 0, width: 1, height: 7), children: []),
                        Node(nodeId: "node-1-6-8-1", frame: CGRect(x: 12, y: 0, width: 1, height: 6), children: []),
                        Node(nodeId: "node-1-6-8-2", frame: CGRect(x: 0, y: 1, width: 16, height: 7), children: []),
                        Node(nodeId: "node-1-6-8-4", frame: CGRect(x: 3, y: 0, width: 11, height: 8), children: []),
                        Node(nodeId: "node-1-6-8-5", frame: CGRect(x: 3, y: 5, width: 1, height: 3), children: []),
                        Node(nodeId: "node-1-6-8-6", frame: CGRect(x: 2, y: 1, width: 13, height: 3), children: []),
                        Node(nodeId: "node-1-6-8-7", frame: CGRect(x: 1, y: 1, width: 6, height: 6), children: []),
                        Node(nodeId: "node-1-6-8-9", frame: CGRect(x: 4, y: 6, width: 12, height: 1), children: []),
                        Node(nodeId: "node-1-6-8-10", frame: CGRect(x: 2, y: 2, width: 10, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-6-9", frame: CGRect(x: 13, y: 0, width: 2, height: 9), children: []),
                    Node(nodeId: "node-1-6-11", frame: CGRect(x: 1, y: 5, width: 16, height: 2), children: [
                        Node(nodeId: "node-1-6-11-0", frame: CGRect(x: 6, y: 0, width: 9, height: 1), children: []),
                        Node(nodeId: "node-1-6-11-1", frame: CGRect(x: 0, y: 0, width: 13, height: 1), children: [])
                    ])
                ]),
                Node(nodeId: "node-1-7", frame: CGRect(x: 14, y: 18, width: 23, height: 13), children: [
                    Node(nodeId: "node-1-7-0", frame: CGRect(x: 0, y: 2, width: 22, height: 8), children: [
                        Node(nodeId: "node-1-7-0-0", frame: CGRect(x: 5, y: 3, width: 9, height: 4), children: []),
                        Node(nodeId: "node-1-7-0-1", frame: CGRect(x: 1, y: 2, width: 20, height: 5), children: []),
                        Node(nodeId: "node-1-7-0-2", frame: CGRect(x: 2, y: 0, width: 5, height: 2), children: []),
                        Node(nodeId: "node-1-7-0-4", frame: CGRect(x: 5, y: 0, width: 15, height: 7), children: []),
                        Node(nodeId: "node-1-7-0-5", frame: CGRect(x: 0, y: 0, width: 21, height: 5), children: []),
                        Node(nodeId: "node-1-7-0-7", frame: CGRect(x: 3, y: 3, width: 10, height: 1), children: []),
                        Node(nodeId: "node-1-7-0-9", frame: CGRect(x: 7, y: 1, width: 11, height: 3), children: []),
                        Node(nodeId: "node-1-7-0-10", frame: CGRect(x: 6, y: 3, width: 8, height: 1), children: []),
                        Node(nodeId: "node-1-7-0-11", frame: CGRect(x: 3, y: 3, width: 15, height: 4), children: []),
                        Node(nodeId: "node-1-7-0-12", frame: CGRect(x: 11, y: 1, width: 7, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-7-1", frame: CGRect(x: 12, y: 4, width: 6, height: 5), children: [
                        Node(nodeId: "node-1-7-1-0", frame: CGRect(x: 3, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-7-1-2", frame: CGRect(x: 0, y: 0, width: 3, height: 4), children: []),
                        Node(nodeId: "node-1-7-1-4", frame: CGRect(x: 0, y: 1, width: 3, height: 2), children: []),
                        Node(nodeId: "node-1-7-1-5", frame: CGRect(x: 0, y: 1, width: 5, height: 3), children: []),
                        Node(nodeId: "node-1-7-1-7", frame: CGRect(x: 1, y: 2, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-7-1-8", frame: CGRect(x: 3, y: 2, width: 1, height: 2), children: []),
                        Node(nodeId: "node-1-7-1-9", frame: CGRect(x: 0, y: 1, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-7-1-10", frame: CGRect(x: 2, y: 1, width: 3, height: 3), children: []),
                        Node(nodeId: "node-1-7-1-12", frame: CGRect(x: 2, y: 2, width: 1, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-7-3", frame: CGRect(x: 6, y: 1, width: 5, height: 8), children: [
                        Node(nodeId: "node-1-7-3-1", frame: CGRect(x: 1, y: 0, width: 2, height: 2), children: []),
                        Node(nodeId: "node-1-7-3-2", frame: CGRect(x: 0, y: 1, width: 4, height: 6), children: []),
                        Node(nodeId: "node-1-7-3-3", frame: CGRect(x: 0, y: 3, width: 3, height: 1), children: []),
                        Node(nodeId: "node-1-7-3-4", frame: CGRect(x: 0, y: 5, width: 2, height: 1), children: []),
                        Node(nodeId: "node-1-7-3-5", frame: CGRect(x: 0, y: 2, width: 3, height: 4), children: []),
                        Node(nodeId: "node-1-7-3-6", frame: CGRect(x: 1, y: 1, width: 3, height: 6), children: []),
                        Node(nodeId: "node-1-7-3-7", frame: CGRect(x: 0, y: 3, width: 3, height: 4), children: []),
                        Node(nodeId: "node-1-7-3-8", frame: CGRect(x: 3, y: 3, width: 1, height: 2), children: []),
                        Node(nodeId: "node-1-7-3-9", frame: CGRect(x: 0, y: 0, width: 4, height: 5), children: []),
                        Node(nodeId: "node-1-7-3-10", frame: CGRect(x: 0, y: 3, width: 4, height: 4), children: []),
                        Node(nodeId: "node-1-7-3-11", frame: CGRect(x: 1, y: 1, width: 3, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-1-7-4", frame: CGRect(x: 5, y: 0, width: 16, height: 11), children: [
                        Node(nodeId: "node-1-7-4-0", frame: CGRect(x: 4, y: 0, width: 7, height: 7), children: []),
                        Node(nodeId: "node-1-7-4-2", frame: CGRect(x: 0, y: 0, width: 8, height: 2), children: []),
                        Node(nodeId: "node-1-7-4-4", frame: CGRect(x: 8, y: 2, width: 4, height: 8), children: []),
                        Node(nodeId: "node-1-7-4-5", frame: CGRect(x: 0, y: 1, width: 15, height: 8), children: []),
                        Node(nodeId: "node-1-7-4-6", frame: CGRect(x: 3, y: 4, width: 10, height: 1), children: []),
                        Node(nodeId: "node-1-7-4-7", frame: CGRect(x: 0, y: 7, width: 14, height: 3), children: []),
                        Node(nodeId: "node-1-7-4-9", frame: CGRect(x: 7, y: 0, width: 6, height: 7), children: [])
                    ]),
                    Node(nodeId: "node-1-7-5", frame: CGRect(x: 5, y: 4, width: 8, height: 4), children: [
                        Node(nodeId: "node-1-7-5-0", frame: CGRect(x: 1, y: 0, width: 3, height: 3), children: []),
                        Node(nodeId: "node-1-7-5-1", frame: CGRect(x: 1, y: 1, width: 4, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-7-6", frame: CGRect(x: 3, y: 9, width: 14, height: 3), children: [
                        Node(nodeId: "node-1-7-6-0", frame: CGRect(x: 9, y: 0, width: 4, height: 2), children: []),
                        Node(nodeId: "node-1-7-6-1", frame: CGRect(x: 1, y: 0, width: 8, height: 2), children: []),
                        Node(nodeId: "node-1-7-6-3", frame: CGRect(x: 1, y: 0, width: 7, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-7-8", frame: CGRect(x: 11, y: 1, width: 7, height: 3), children: [
                        Node(nodeId: "node-1-7-8-1", frame: CGRect(x: 1, y: 1, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-7-8-4", frame: CGRect(x: 1, y: 1, width: 5, height: 1), children: []),
                        Node(nodeId: "node-1-7-8-6", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-1-7-8-8", frame: CGRect(x: 2, y: 0, width: 4, height: 2), children: [])
                    ])
                ]),
                Node(nodeId: "node-1-8", frame: CGRect(x: 5, y: 5, width: 39, height: 12), children: [
                    Node(nodeId: "node-1-8-0", frame: CGRect(x: 17, y: 0, width: 17, height: 10), children: [
                        Node(nodeId: "node-1-8-0-0", frame: CGRect(x: 7, y: 5, width: 8, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-8-1", frame: CGRect(x: 8, y: 3, width: 25, height: 7), children: [
                        Node(nodeId: "node-1-8-1-0", frame: CGRect(x: 6, y: 1, width: 14, height: 4), children: []),
                        Node(nodeId: "node-1-8-1-1", frame: CGRect(x: 11, y: 4, width: 7, height: 2), children: []),
                        Node(nodeId: "node-1-8-1-2", frame: CGRect(x: 4, y: 0, width: 13, height: 4), children: []),
                        Node(nodeId: "node-1-8-1-3", frame: CGRect(x: 2, y: 1, width: 8, height: 5), children: []),
                        Node(nodeId: "node-1-8-1-4", frame: CGRect(x: 7, y: 0, width: 16, height: 3), children: []),
                        Node(nodeId: "node-1-8-1-5", frame: CGRect(x: 16, y: 2, width: 6, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-1-8-2", frame: CGRect(x: 0, y: 1, width: 38, height: 5), children: [
                        Node(nodeId: "node-1-8-2-0", frame: CGRect(x: 9, y: 2, width: 8, height: 1), children: []),
                        Node(nodeId: "node-1-8-2-1", frame: CGRect(x: 4, y: 0, width: 30, height: 4), children: []),
                        Node(nodeId: "node-1-8-2-2", frame: CGRect(x: 5, y: 1, width: 18, height: 3), children: []),
                        Node(nodeId: "node-1-8-2-3", frame: CGRect(x: 8, y: 0, width: 27, height: 4), children: []),
                        Node(nodeId: "node-1-8-2-4", frame: CGRect(x: 20, y: 2, width: 10, height: 2), children: []),
                        Node(nodeId: "node-1-8-2-5", frame: CGRect(x: 23, y: 1, width: 6, height: 1), children: []),
                        Node(nodeId: "node-1-8-2-6", frame: CGRect(x: 4, y: 0, width: 4, height: 4), children: []),
                        Node(nodeId: "node-1-8-2-7", frame: CGRect(x: 1, y: 3, width: 18, height: 1), children: []),
                        Node(nodeId: "node-1-8-2-8", frame: CGRect(x: 21, y: 1, width: 14, height: 3), children: []),
                        Node(nodeId: "node-1-8-2-10", frame: CGRect(x: 15, y: 0, width: 15, height: 4), children: []),
                        Node(nodeId: "node-1-8-2-11", frame: CGRect(x: 20, y: 0, width: 14, height: 4), children: []),
                        Node(nodeId: "node-1-8-2-12", frame: CGRect(x: 7, y: 0, width: 14, height: 4), children: []),
                        Node(nodeId: "node-1-8-2-13", frame: CGRect(x: 9, y: 0, width: 22, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-1-8-3", frame: CGRect(x: 3, y: 3, width: 6, height: 7), children: [
                        Node(nodeId: "node-1-8-3-0", frame: CGRect(x: 2, y: 1, width: 1, height: 5), children: []),
                        Node(nodeId: "node-1-8-3-1", frame: CGRect(x: 0, y: 3, width: 4, height: 1), children: []),
                        Node(nodeId: "node-1-8-3-4", frame: CGRect(x: 1, y: 3, width: 4, height: 2), children: []),
                        Node(nodeId: "node-1-8-3-5", frame: CGRect(x: 1, y: 0, width: 4, height: 4), children: []),
                        Node(nodeId: "node-1-8-3-8", frame: CGRect(x: 0, y: 0, width: 4, height: 5), children: []),
                        Node(nodeId: "node-1-8-3-10", frame: CGRect(x: 2, y: 0, width: 3, height: 3), children: []),
                        Node(nodeId: "node-1-8-3-11", frame: CGRect(x: 2, y: 0, width: 2, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-1-8-4", frame: CGRect(x: 11, y: 5, width: 10, height: 1), children: []),
                    Node(nodeId: "node-1-8-5", frame: CGRect(x: 13, y: 3, width: 2, height: 1), children: []),
                    Node(nodeId: "node-1-8-6", frame: CGRect(x: 2, y: 4, width: 31, height: 3), children: [
                        Node(nodeId: "node-1-8-6-1", frame: CGRect(x: 6, y: 0, width: 10, height: 1), children: []),
                        Node(nodeId: "node-1-8-6-2", frame: CGRect(x: 8, y: 0, width: 10, height: 2), children: []),
                        Node(nodeId: "node-1-8-6-5", frame: CGRect(x: 19, y: 0, width: 6, height: 2), children: []),
                        Node(nodeId: "node-1-8-6-6", frame: CGRect(x: 0, y: 0, width: 30, height: 2), children: []),
                        Node(nodeId: "node-1-8-6-8", frame: CGRect(x: 14, y: 0, width: 11, height: 2), children: [])
                    ])
                ])
            ]),
            Node(nodeId: "node-2", frame: CGRect(x: 2, y: 30, width: 10, height: 13), children: [
                Node(nodeId: "node-2-0", frame: CGRect(x: 6, y: 0, width: 1, height: 9), children: []),
                Node(nodeId: "node-2-1", frame: CGRect(x: 4, y: 0, width: 1, height: 11), children: []),
                Node(nodeId: "node-2-2", frame: CGRect(x: 2, y: 3, width: 7, height: 8), children: [
                    Node(nodeId: "node-2-2-1", frame: CGRect(x: 0, y: 6, width: 4, height: 1), children: []),
                    Node(nodeId: "node-2-2-2", frame: CGRect(x: 3, y: 1, width: 3, height: 1), children: []),
                    Node(nodeId: "node-2-2-3", frame: CGRect(x: 4, y: 3, width: 2, height: 1), children: []),
                    Node(nodeId: "node-2-2-4", frame: CGRect(x: 3, y: 1, width: 2, height: 3), children: [
                        Node(nodeId: "node-2-2-4-0", frame: CGRect(x: 0, y: 0, width: 1, height: 2), children: []),
                        Node(nodeId: "node-2-2-4-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-4-3", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-4-4", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-4-5", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-4-6", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-4-7", frame: CGRect(x: 0, y: 0, width: 1, height: 2), children: []),
                        Node(nodeId: "node-2-2-4-9", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-4-11", frame: CGRect(x: 0, y: 0, width: 1, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-2-2-5", frame: CGRect(x: 1, y: 0, width: 3, height: 4), children: [
                        Node(nodeId: "node-2-2-5-0", frame: CGRect(x: 0, y: 1, width: 2, height: 1), children: []),
                        Node(nodeId: "node-2-2-5-2", frame: CGRect(x: 0, y: 0, width: 2, height: 3), children: []),
                        Node(nodeId: "node-2-2-5-3", frame: CGRect(x: 0, y: 1, width: 2, height: 2), children: []),
                        Node(nodeId: "node-2-2-5-4", frame: CGRect(x: 1, y: 0, width: 1, height: 2), children: []),
                        Node(nodeId: "node-2-2-5-5", frame: CGRect(x: 0, y: 0, width: 1, height: 3), children: []),
                        Node(nodeId: "node-2-2-5-8", frame: CGRect(x: 1, y: 0, width: 1, height: 2), children: [])
                    ]),
                    Node(nodeId: "node-2-2-6", frame: CGRect(x: 0, y: 2, width: 2, height: 4), children: [
                        Node(nodeId: "node-2-2-6-0", frame: CGRect(x: 0, y: 2, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-6-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-6-3", frame: CGRect(x: 0, y: 1, width: 1, height: 1), children: []),
                        Node(nodeId: "node-2-2-6-4", frame: CGRect(x: 0, y: 1, width: 1, height: 2), children: []),
                        Node(nodeId: "node-2-2-6-5", frame: CGRect(x: 0, y: 0, width: 1, height: 2), children: []),
                        Node(nodeId: "node-2-2-6-7", frame: CGRect(x: 0, y: 0, width: 1, height: 3), children: []),
                        Node(nodeId: "node-2-2-6-9", frame: CGRect(x: 0, y: 0, width: 1, height: 3), children: [])
                    ])
                ]),
                Node(nodeId: "node-2-3", frame: CGRect(x: 0, y: 0, width: 9, height: 11), children: [
                    Node(nodeId: "node-2-3-0", frame: CGRect(x: 4, y: 1, width: 4, height: 5), children: [
                        Node(nodeId: "node-2-3-0-2", frame: CGRect(x: 0, y: 3, width: 3, height: 1), children: []),
                        Node(nodeId: "node-2-3-0-3", frame: CGRect(x: 1, y: 0, width: 1, height: 4), children: []),
                        Node(nodeId: "node-2-3-0-4", frame: CGRect(x: 0, y: 0, width: 3, height: 3), children: []),
                        Node(nodeId: "node-2-3-0-6", frame: CGRect(x: 2, y: 0, width: 1, height: 4), children: []),
                        Node(nodeId: "node-2-3-0-7", frame: CGRect(x: 0, y: 0, width: 2, height: 3), children: []),
                        Node(nodeId: "node-2-3-0-8", frame: CGRect(x: 1, y: 1, width: 1, height: 3), children: []),
                        Node(nodeId: "node-2-3-0-10", frame: CGRect(x: 2, y: 0, width: 1, height: 4), children: [])
                    ]),
                    Node(nodeId: "node-2-3-1", frame: CGRect(x: 3, y: 0, width: 3, height: 6), children: [
                        Node(nodeId: "node-2-3-1-0", frame: CGRect(x: 0, y: 1, width: 1, height: 2), children: []),
                        Node(nodeId: "node-2-3-1-3", frame: CGRect(x: 0, y: 0, width: 2, height: 3), children: []),
                        Node(nodeId: "node-2-3-1-4", frame: CGRect(x: 0, y: 2, width: 2, height: 3), children: []),
                        Node(nodeId: "node-2-3-1-7", frame: CGRect(x: 0, y: 0, width: 2, height: 5), children: [])
                    ]),
                    Node(nodeId: "node-2-3-2", frame: CGRect(x: 2, y: 8, width: 4, height: 2), children: [
                        Node(nodeId: "node-2-3-2-2", frame: CGRect(x: 0, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-2-3-2-6", frame: CGRect(x: 0, y: 0, width: 2, height: 1), children: []),
                        Node(nodeId: "node-2-3-2-7", frame: CGRect(x: 0, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-2-3-2-8", frame: CGRect(x: 0, y: 0, width: 3, height: 1), children: []),
                        Node(nodeId: "node-2-3-2-10", frame: CGRect(x: 0, y: 0, width: 2, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-2-3-3", frame: CGRect(x: 3, y: 4, width: 2, height: 2), children: [
                        Node(nodeId: "node-2-3-3-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                    ]),
                    Node(nodeId: "node-2-3-4", frame: CGRect(x: 6, y: 2, width: 1, height: 2), children: [])
                ]),
                Node(nodeId: "node-2-4", frame: CGRect(x: 3, y: 1, width: 3, height: 9), children: [
                    Node(nodeId: "node-2-4-0", frame: CGRect(x: 1, y: 2, width: 1, height: 6), children: []),
                    Node(nodeId: "node-2-4-4", frame: CGRect(x: 1, y: 6, width: 1, height: 2), children: [])
                ])
            ])
        ])

        runTestOnNode(root)
    }
    
    func test4_Hard() {
        let root = Node(nodeId: "node", frame: CGRect(x: 0, y: 0, width: 200, height: 10), children: [
            Node(nodeId: "node-0", frame: CGRect(x: 27, y: 6, width: 111, height: 2), children: [
                Node(nodeId: "node-0-0", frame: CGRect(x: 79, y: 0, width: 1, height: 1), children: [
                    Node(nodeId: "node-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                        Node(nodeId: "node-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                            Node(nodeId: "node-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                Node(nodeId: "node-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-0-0-0-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-0-0-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-0-0-0-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ]),
                                Node(nodeId: "node-0-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-0-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-0-0-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-0-0-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-0-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-0-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-0-0-1-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-0-0-0-0-0-1-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-0-0-1-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-0-0-1-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-0-0-1-1-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ])
                        ]),
                        Node(nodeId: "node-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                            Node(nodeId: "node-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                Node(nodeId: "node-0-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-0-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-1-0-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-0-0-0-1-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-1-0-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-0-0-0-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-1-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-1-0-0-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-0-0-0-1-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-0-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-0-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-1-0-0-1-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-0-0-0-1-0-0-1-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-0-0-1-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ]),
                            Node(nodeId: "node-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                Node(nodeId: "node-0-0-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-0-0-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-1-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-1-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-0-0-0-1-1-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-1-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-0-0-0-1-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-1-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-1-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-0-0-0-1-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-0-0-0-1-1-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-1-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-1-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-1-1-0-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-0-0-0-1-1-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-1-0-1-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-0-0-0-1-1-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-0-0-0-1-1-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-0-0-0-1-1-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-0-0-0-1-1-0-1-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ])
                        ])
                    ])
                ])
            ]),
            Node(nodeId: "node-1", frame: CGRect(x: 117, y: 4, width: 77, height: 5), children: [
                Node(nodeId: "node-1-0", frame: CGRect(x: 0, y: 0, width: 67, height: 3), children: [
                    Node(nodeId: "node-1-0-0", frame: CGRect(x: 12, y: 0, width: 39, height: 2), children: [
                        Node(nodeId: "node-1-0-0-0", frame: CGRect(x: 14, y: 0, width: 18, height: 1), children: [
                            Node(nodeId: "node-1-0-0-0-0", frame: CGRect(x: 1, y: 0, width: 16, height: 1), children: [
                                Node(nodeId: "node-1-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 15, height: 1), children: [
                                    Node(nodeId: "node-1-0-0-0-0-0-0", frame: CGRect(x: 4, y: 0, width: 4, height: 1), children: [
                                        Node(nodeId: "node-1-0-0-0-0-0-0-0", frame: CGRect(x: 1, y: 0, width: 2, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-0-0-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-1-0-0-0-0-0-0-1", frame: CGRect(x: 2, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-0-0-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-0-0-0-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-1-0-0-0-0-0-1", frame: CGRect(x: 1, y: 0, width: 13, height: 1), children: [
                                        Node(nodeId: "node-1-0-0-0-0-0-1-0", frame: CGRect(x: 4, y: 0, width: 8, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-0-0-0-1-0-0", frame: CGRect(x: 1, y: 0, width: 6, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-0-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 2, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-0-0-0-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 7, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-0-0-0-1-0-1-0", frame: CGRect(x: 1, y: 0, width: 4, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-0-0-0-1-0-1-1", frame: CGRect(x: 2, y: 0, width: 3, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-1-0-0-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 12, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-0-0-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 11, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-0-0-0-1-1-0-0", frame: CGRect(x: 5, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-0-0-0-1-1-0-1", frame: CGRect(x: 1, y: 0, width: 7, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-0-0-0-0-1-1-1", frame: CGRect(x: 2, y: 0, width: 8, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-0-0-0-1-1-1-0", frame: CGRect(x: 6, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-0-0-0-1-1-1-1", frame: CGRect(x: 1, y: 0, width: 5, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ])
                        ]),
                        Node(nodeId: "node-1-0-0-1", frame: CGRect(x: 13, y: 0, width: 13, height: 1), children: [
                            Node(nodeId: "node-1-0-0-1-0", frame: CGRect(x: 2, y: 0, width: 2, height: 1), children: [
                                Node(nodeId: "node-1-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-1-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-1-0-0-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-1-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-1-0-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-0-1-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-1-0-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ]),
                                Node(nodeId: "node-1-0-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-1-0-0-1-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-1-0-0-1-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-1-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-0-1-0-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-1-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-1-0-1-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-1-0-0-1-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-1-0-1-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-1-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-0-1-0-1-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-1-0-0-1-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-1-0-0-1-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-0-1-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-1-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-0-1-0-1-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-0-1-0-1-1-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ])
                        ])
                    ]),
                    Node(nodeId: "node-1-0-1", frame: CGRect(x: 4, y: 0, width: 60, height: 1), children: [
                        Node(nodeId: "node-1-0-1-0", frame: CGRect(x: 10, y: 0, width: 2, height: 1), children: [
                            Node(nodeId: "node-1-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                Node(nodeId: "node-1-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-1-0-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-1-0-1-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-0-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-1-0-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-0-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-1-0-0-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-1-0-1-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-1-0-1-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-0-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-0-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-1-0-1-0-0-0-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-0-0-0-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-0-0-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ]),
                                Node(nodeId: "node-1-0-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                    Node(nodeId: "node-1-0-1-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                        Node(nodeId: "node-1-0-1-0-0-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-0-0-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ])
                        ]),
                        Node(nodeId: "node-1-0-1-1", frame: CGRect(x: 9, y: 0, width: 44, height: 1), children: [
                            Node(nodeId: "node-1-0-1-1-0", frame: CGRect(x: 10, y: 0, width: 28, height: 1), children: [
                                Node(nodeId: "node-1-0-1-1-0-0", frame: CGRect(x: 10, y: 0, width: 12, height: 1), children: [
                                    Node(nodeId: "node-1-0-1-1-0-0-0", frame: CGRect(x: 6, y: 0, width: 3, height: 1), children: [
                                        Node(nodeId: "node-1-0-1-1-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-1-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-1-0-0-0-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-1-1-0-0-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-1-0-0-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ]),
                                    Node(nodeId: "node-1-0-1-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 8, height: 1), children: [
                                        Node(nodeId: "node-1-0-1-1-0-0-1-0", frame: CGRect(x: 0, y: 0, width: 7, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-1-0-0-1-0-0", frame: CGRect(x: 4, y: 0, width: 2, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-1-0-0-1-0-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-1-1-0-0-1-0-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-1-1-0-0-1-0-1", frame: CGRect(x: 0, y: 0, width: 4, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-1-0-0-1-0-1-0", frame: CGRect(x: 1, y: 0, width: 2, height: 1), children: [])
                                            ])
                                        ]),
                                        Node(nodeId: "node-1-0-1-1-0-0-1-1", frame: CGRect(x: 1, y: 0, width: 5, height: 1), children: [
                                            Node(nodeId: "node-1-0-1-1-0-0-1-1-0", frame: CGRect(x: 2, y: 0, width: 2, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-1-0-0-1-1-0-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: []),
                                                Node(nodeId: "node-1-0-1-1-0-0-1-1-0-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ]),
                                            Node(nodeId: "node-1-0-1-1-0-0-1-1-1", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [
                                                Node(nodeId: "node-1-0-1-1-0-0-1-1-1-0", frame: CGRect(x: 0, y: 0, width: 1, height: 1), children: [])
                                            ])
                                        ])
                                    ])
                                ])
                            ])
                        ])
                    ])
                ])
            ])
        ])

        runTestOnNode(root)
    }
}
