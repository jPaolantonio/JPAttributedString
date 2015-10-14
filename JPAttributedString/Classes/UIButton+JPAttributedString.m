//
//  UIButton+JPAttributedString.m
//  Pods
//
//  Created by Bryan Oltman on 10/13/15.
//
//

#import "UIButton+JPAttributedString.h"

#import "JPStringAttribute.h"

@implementation UIButton (JPAttributedString)

- (NSAttributedString *)jp_appendString:(NSString *)string attributes:(JPStringAttribute *)attributes {
    NSMutableAttributedString *retString = [[NSMutableAttributedString alloc] initWithAttributedString:self.titleLabel.attributedText];
    
    [retString appendAttributedString:[[NSAttributedString alloc] initWithString:string
                                                                      attributes:[attributes attributedDictionary]]];
    
    [self setAttributedTitle:retString forState:UIControlStateNormal];
    
    return retString;
}

- (NSAttributedString *)jp_appendString:(NSString *)string attributesBlock:(void(^)(JPStringAttribute *make))block {
    NSMutableAttributedString *retString = [[NSMutableAttributedString alloc] initWithAttributedString:self.titleLabel.attributedText];
    JPStringAttribute *stringAttribute = [[JPStringAttribute alloc] init];
    if (block) {
        block(stringAttribute);
    }
    
    [retString appendAttributedString:[[NSAttributedString alloc] initWithString:string
                                                                      attributes:[stringAttribute attributedDictionary]]];
    
    [self setAttributedTitle:retString forState:UIControlStateNormal];
    
    return retString;
}

@end
