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

/**
 *  Appends an attributed string to a UILabel's attributedText property
 *
 *  @param string     NSString used to create NSAttributedString's string
 *  @param attributes JPStringAttribute used as NSAttributedString's attributes
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString *)jp_appendString:(NSString *)string attributes:(JPStringAttribute *)attributes;

/**
 *  Appends an attributed string to a UILabel's attributedText property
 *
 *  @param string NSString used to create NSAttributedString's string
 *  @param block  void(^)(JPStringAttribute *make) block to configure JPStringAttribute
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString *)jp_appendString:(NSString *)string attributesBlock:(void(^)(JPStringAttribute *make))block;

@end
