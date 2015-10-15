//
//  NSString+JPAttributedString.m
//  Pods
//
//  Created by James Paolantonio on 2/20/15.
//
//

#import "NSString+JPAttributedString.h"

#import "JPStringAttribute.h"

@implementation NSString (JPAttributedString)

- (NSAttributedString *)attributedStringWithAttributes:(JPStringAttribute *)attributes {
    return [[NSAttributedString alloc] initWithString:self attributes:[attributes attributedDictionary]];
}

- (NSAttributedString *)attributedStringWithAttributesBlock:(void(^)(JPStringAttribute *make))block {
    JPStringAttribute *stringAttribute = [[JPStringAttribute alloc] init];
    if (block) {
        block(stringAttribute);
    }

    return [[NSAttributedString alloc] initWithString:self attributes:[stringAttribute attributedDictionary]];
}

@end
