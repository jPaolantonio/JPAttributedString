//
//  UITextView+JPAttributedString.m
//  Pods
//
//  Created by James Paolantonio on 2/20/15.
//
//

#import "UITextView+JPAttributedString.h"

#import "JPStringAttribute.h"

@implementation UITextView (JPAttributedString)

- (NSAttributedString *)jp_appendString:(NSString *)string attributes:(JPStringAttribute *)attributes {
    NSMutableAttributedString *retString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];

    [retString appendAttributedString:[[NSAttributedString alloc] initWithString:string attributes:[attributes attributedDictionary]]];

    self.attributedText = retString;

    return retString;
}

- (NSAttributedString *)jp_appendString:(NSString *)string attributesBlock:(void(^)(JPStringAttribute *make))block {
    NSMutableAttributedString *retString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    JPStringAttribute *stringAttribute = [[JPStringAttribute alloc] init];
    if (block) {
        block(stringAttribute);
    }

    [retString appendAttributedString:[[NSAttributedString alloc] initWithString:string attributes:[stringAttribute attributedDictionary]]];

    self.attributedText = retString;

    return retString;
}

@end
