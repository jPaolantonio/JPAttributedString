//
//  UITextView+JPAttributedString.h
//  Pods
//
//  Created by James Paolantonio on 2/20/15.
//
//

#import <UIKit/UIKit.h>

@class JPStringAttribute;

@interface UITextView (JPAttributedString)

/**
 *  Appends an attributed string to a UILabel's attributedText property
 *
 *  @param string     NSString used to create NSAttributedString's string
 *  @param attributes JPStringAttribute used as NSAttributedString's attributes
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString * _Nonnull)jp_appendString:(NSString * _Nonnull)string attributes:(JPStringAttribute * _Nonnull)attributes;

/**
 *  Appends an attributed string to a UILabel's attributedText property
 *
 *  @param string NSString used to create NSAttributedString's string
 *  @param block  void(^)(JPStringAttribute *make) block to configure JPStringAttribute
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString * _Nonnull)jp_appendString:(NSString * _Nonnull)string attributesBlock:(void(^ _Nullable)(JPStringAttribute * _Nonnull make))block;

@end
