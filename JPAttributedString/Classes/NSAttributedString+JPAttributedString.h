//
//  NSAttributedString+JPAttributedString.h
//  Pods
//
//  Created by James Paolantonio on 2/20/15.
//
//

#import <Foundation/Foundation.h>

@class JPStringAttribute;

@interface NSAttributedString (JPAttributedString)

/**
 *  Creates a new NSAttributedString with the receiver's string as the string
 *
 *  @param attributes JPStringAttribute used as NSAttributedString's attributes
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString *)attributedStringWithAttributes:(JPStringAttribute *)attributes;

/**
 *  Creates a new NSAttributedString with the receiver's string as the string
 *
 *  @param block void(^)(JPStringAttribute *make) block to configure JPStringAttribute
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString *)attributedStringWithAttributesBlock:(void(^)(JPStringAttribute *make))block;

@end
