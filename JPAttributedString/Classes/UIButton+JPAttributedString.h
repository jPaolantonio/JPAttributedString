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
- (NSAttributedString * _Nonnull)jp_appendString:(NSString * _Nonnull)string attributes:(JPStringAttribute * _Nonnull)attributes;

/**
 *  Appends an attributed string to a UIButton's titleLabel
 *
 *  @param string NSString used to create NSAttributedString's string
 *  @param block  void(^)(JPStringAttribute *make) block to configure JPStringAttribute
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString * _Nonnull)jp_appendString:(NSString * _Nonnull)string attributesBlock:(void(^ _Nullable)(JPStringAttribute * _Nonnull make))block;

@end
