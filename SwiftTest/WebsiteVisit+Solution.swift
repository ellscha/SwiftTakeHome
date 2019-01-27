import Foundation

extension WebsiteVisit {

    //if using Objective-C, leave this alone and implement the function in WebsiteVisitObjectiveC.m
    //if using Swift, implement this function
    
    /**
     Returns the total number of website visits, unique visitors, and defined sessions from the given array of
     WebsiteVisit objects.
     - Parameter websiteVisits: An​ ​array​ ​of​ ​​WebsiteVisit​​ ​​objects. The​ ​​WebsiteVisit​​ ​objects​ ​are sorted​ ​chronologically,​ ​from​ ​oldest​ ​to​ ​most​ ​recent. WebsiteVisit object: visitorId​:​ ​a​ ​unique​ ​identifier​ ​for​ ​a​ ​visitor. timestamp​:​ ​a​ ​timestamp​ ​in​ ​seconds.
     - Returns: number​ ​of​ ​website​ ​visits, number​ ​of​ ​unique​ ​visitors, number​ ​of​ ​sessions.
     */
    static func processWebsiteVisits(websiteVisits: [WebsiteVisit]) -> (websiteVisits: Int, uniqueVisitors: Int, sessions: Int) {
        let visits = websiteVisits.count
        let uniqueVisitors = Set(websiteVisits.map { $0.visitorId } ).count
        let sessions = processSessionsFromWebsiteVisits(websiteVisits)
        
        return (visits, uniqueVisitors, sessions)
    }
    
    /// Returns the number of sessions from the given array of WebsiteVisits
    static func processSessionsFromWebsiteVisits(_ websiteVisits: [WebsiteVisit]) -> Int {
        // Reorganize using Dictionary below for easier processing of sessions per visitor
        
        /// Dictionary of <VisitorId, [Timestamps]>
        var visitorTimes: Dictionary<String, [Int]> = [:]
        for visit in websiteVisits {
            if visitorTimes[visit.visitorId] != nil {
                // visitor entry already exists, so append timestamp to entry
                visitorTimes[visit.visitorId]?.append(visit.timestamp)
            } else {
                // visitor entry does not exist, so create it with given timestamp
                visitorTimes[visit.visitorId] = [visit.timestamp]
            }
        }
        
        /// 30 mins in seconds
        let sessionDeadline: Int = 30 * 60
        
        var sessions = 0
        let _ = visitorTimes.map { _, timestamps in
            // automatically 1 session per visitor
            sessions += 1
            if timestamps.count >= 2 && timestamps[timestamps.count - 1] - timestamps[0] > sessionDeadline {
                // if there are at least two timestamps, and the first and last are at least 30 mins apart,
                // check for more sessions
                for i in 0..<timestamps.count - 1 {
                    let time = timestamps[i]
                    let nextTime = timestamps[i+1]
                    if nextTime - time > sessionDeadline {
                        // 1 additional session when visitor revisits after 30 mins
                        sessions += 1
                    }
                }
            }
        }
        return sessions
    }
}
