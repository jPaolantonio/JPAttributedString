//
//  NSAttributedString+JPAttributedString.m
//  Pods
//
//  Created by James Paolantonio on 2/20/15.
//
//

#import "NSAttributedString+JPAttributedString.h"
#import "NSString+JPAttributedString.h"

#import "JPStringAttribute.h"

@implementation NSAttributedString (JPAttributedString)

- (NSAttributedString *)attributedStringWithAttributes:(JPStringAttribute *)attributes {
    return [self.string attributedStringWithAttributes:attributes];
}

- (NSAttributedString *)attributedStringWithAttributesBlock:(void(^)(JPStringAttribute *make))block {
    return [self.string attributedStringWithAttributesBlock:block];
}

@end
