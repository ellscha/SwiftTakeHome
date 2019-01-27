
//This file SHOULD NOT be modified.

import Foundation
import UIKit

@objc class Node : NSObject {
    let nodeId: String
    let frame: CGRect
    let children: [Node]

    init(nodeId: String, frame: CGRect, children: [Node]) {
        self.nodeId = nodeId
        self.frame = frame
        self.children = children
    }
}

