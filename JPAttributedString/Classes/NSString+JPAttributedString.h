//
//  NSString+JPAttributedString.h
//  Pods
//
//  Created by James Paolantonio on 2/20/15.
//
//

#import <Foundation/Foundation.h>

@class JPStringAttribute;

@interface NSString (JPAttributedString)

/**
 *  Creates a new NSAttributedString with the receiver as the string
 *
 *  @param attributes JPStringAttribute used as NSAttributedString's attributes
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString * _Nonnull)attributedStringWithAttributes:(JPStringAttribute * _Nonnull)attributes;

/**
 *  Creates a new NSAttributedString with the receiver as the string
 *
 *  @param block void(^)(JPStringAttribute *make) block to configure JPStringAttribute
 *
 *  @return Newly created NSAttributedString
 */
- (NSAttributedString * _Nonnull)attributedStringWithAttributesBlock:(void(^ _Nullable)(JPStringAttribute * _Nonnull make))block;

@end
