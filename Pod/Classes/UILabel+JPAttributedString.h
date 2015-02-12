//
//  NSAttributedString+JPAttributedString.h
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import <UIKit/UIKit.h>

@class JPStringAttribute;

@interface UILabel (JPAttributedString)

- (NSAttributedString *)jp_appendString:(NSString *)string attributes:(JPStringAttribute *)attributes;

- (NSAttributedString *)jp_appendString:(NSString *)string attributesBlock:(void(^)(JPStringAttribute *make))block;

@end
