//
//  JPStringAttribute.h
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import <UIKit/UIKit.h>

@interface JPStringAttribute : NSObject

/**
 *  NSFontAttributeName
 */
@property (strong, nonatomic) UIFont *font;

/**
 *  NSParagraphStyleAttributeName
 */
@property (strong, nonatomic) NSParagraphStyle *paragraphStyle;

/**
 *  NSForegroundColorAttributeName
 */
@property (strong, nonatomic) UIColor *foregroundColor;

/**
 *  NSBackgroundColorAttributeName
 */
@property (strong, nonatomic) UIColor *backgroundColor;

/**
 *  NSLigatureAttributeName
 */
@property (strong, nonatomic) NSNumber *ligature;

/**
 *  NSKernAttributeName
 */
@property (strong, nonatomic) NSNumber *kern;

/**
 *  NSStrikethroughStyleAttributeName
 */
@property (strong, nonatomic) NSNumber *strikethroughStyle;

/**
 *  NSUnderlineStyleAttributeName
 */
@property (strong, nonatomic) NSNumber *underlineStyle;

/**
 *  NSStrokeColorAttributeName
 */
@property (strong, nonatomic) UIColor *strokeColor;

/**
 *  NSStrokeWidthAttributeName
 */
@property (strong, nonatomic) NSNumber *strokeWidth;

/**
 *  NSShadowAttributeName
 */
@property (strong, nonatomic) NSShadow *shadow;

/**
 *  NSTextEffectAttributeName
 */
@property (copy, nonatomic) NSString *textEffect;

/**
 *  NSBaselineOffsetAttributeName
 */
@property (strong, nonatomic) NSNumber *baselineOffset;

/**
 *  NSUnderlineColorAttributeName
 */
@property (strong, nonatomic) UIColor *underlineColor;

/**
 *  NSStrikethroughColorAttributeName
 */
@property (strong, nonatomic) UIColor *strikethroughColor;

/**
 *  Creates a NSDictionary to be used as a NSAttributedString's attributes
 */
- (NSDictionary *)attributedDictionary;

@end
