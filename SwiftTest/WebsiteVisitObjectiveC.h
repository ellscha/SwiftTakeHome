#import <Foundation/Foundation.h>

@class WebsiteVisit;
@interface WebsiteVisitObjectiveC : NSObject

+ (nonnull NSArray<NSNumber *> *)processWebsiteVisits:(nonnull NSArray<WebsiteVisit *> *)websiteVisits;

@end
