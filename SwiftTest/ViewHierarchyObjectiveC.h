#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Node;
@interface ViewHierarchyObjectiveC : NSObject

+ (nonnull NSArray<NSString *> *)findPathToNode:(nonnull Node *)rootNode drawnAtPixel:(CGPoint)pixel;

@end
