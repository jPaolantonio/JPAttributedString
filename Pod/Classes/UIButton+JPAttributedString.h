//
//  UIButton+JPAttributedString.h
//  Pods
//
//  Created by Bryan Oltman on 10/13/15.
//
//

#import <UIKit/UIKit.h>

@class JPStringAttribute;

@interface UIButton (JPAttributedString)

/**
 *  Appends an attributed string to a UIButton's titleLabel
 *
 *  @param string     NSString used to create NSAttributedString's string
 *  @param attributes JPStringAttribute used as NSAttributedString's attributes
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString *)jp_appendString:(NSString *)string attributes:(JPStringAttribute *)attributes;

/**
 *  Appends an attributed string to a UIButton's titleLabel
 *
 *  @param string NSString used to create NSAttributedString's string
 *  @param block  void(^)(JPStringAttribute *make) block to configure JPStringAttribute
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString *)jp_appendString:(NSString *)string attributesBlock:(void(^)(JPStringAttribute *make))block;

@end
