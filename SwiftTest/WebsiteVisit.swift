
//This file SHOULD NOT be modified.

import Foundation

@objc class WebsiteVisit : NSObject {
    let visitorId: String
    let timestamp: Int

    init(visitorId: String, timestamp: Int) {
        self.visitorId = visitorId
        self.timestamp = timestamp
    }
    
}
