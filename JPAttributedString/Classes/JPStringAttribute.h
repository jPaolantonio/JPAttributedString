//
//  JPStringAttribute.h
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import <UIKit/UIKit.h>

@interface JPStringAttribute : NSObject

///------------------------------------
/// @name NSAttributedString Attributes
///------------------------------------

/**
 *  NSFontAttributeName
 */
@property (strong, nonatomic)  UIFont * _Nullable font;

/**
 *  NSForegroundColorAttributeName
 */
@property (strong, nonatomic)  UIColor * _Nullable foregroundColor;

/**
 *  NSBackgroundColorAttributeName
 */
@property (strong, nonatomic)  UIColor * _Nullable backgroundColor;

/**
 *  NSLigatureAttributeName
 */
@property (strong, nonatomic)  NSNumber * _Nullable ligature;

/**
 *  NSKernAttributeName
 */
@property (strong, nonatomic)  NSNumber * _Nullable kern;

/**
 *  NSStrikethroughStyleAttributeName
 */
@property (strong, nonatomic)  NSNumber * _Nullable strikethroughStyle;

/**
 *  NSUnderlineStyleAttributeName
 */
@property (strong, nonatomic)  NSNumber * _Nullable underlineStyle;

/**
 *  NSStrokeColorAttributeName
 */
@property (strong, nonatomic)  UIColor * _Nullable strokeColor;

/**
 *  NSStrokeWidthAttributeName
 */
@property (strong, nonatomic)  NSNumber * _Nullable strokeWidth;

/**
 *  NSShadowAttributeName
 */
@property (strong, nonatomic)  NSShadow * _Nullable shadow;

/**
 *  NSTextEffectAttributeName
 */
@property (copy, nonatomic)  NSString * _Nullable textEffect;

/**
 *  NSBaselineOffsetAttributeName
 */
@property (strong, nonatomic)  NSNumber * _Nullable baselineOffset;

/**
 *  NSUnderlineColorAttributeName
 */
@property (strong, nonatomic)  UIColor * _Nullable underlineColor;

/**
 *  NSStrikethroughColorAttributeName
 */
@property (strong, nonatomic)  UIColor * _Nullable strikethroughColor;

///----------------------------------
/// @name NSParagraphStyle Attributes
///----------------------------------

@property (assign, nonatomic) CGFloat lineSpacing;
@property (assign, nonatomic) CGFloat paragraphSpacing;
@property (assign, nonatomic) NSTextAlignment alignment;
@property (assign, nonatomic) CGFloat firstLineHeadIndent;
@property (assign, nonatomic) CGFloat headIndent;
@property (assign, nonatomic) CGFloat tailIndent;
@property (assign, nonatomic) NSLineBreakMode lineBreakMode;
@property (assign, nonatomic) CGFloat minimumLineHeight;
@property (assign, nonatomic) CGFloat maximumLineHeight;
@property (assign, nonatomic) NSWritingDirection baseWritingDirection;
@property (assign, nonatomic) CGFloat lineHeightMultiple;
@property (assign, nonatomic) CGFloat paragraphSpacingBefore;
@property (assign, nonatomic) float hyphenationFactor;
@property (copy, nonatomic) NSArray<NSTextTab *> * _Nullable  tabStops;
@property (assign, nonatomic) CGFloat defaultTabInterval;

///----------------------------
/// @name Attributed Dictionary
///----------------------------

/**
 *  Creates a NSDictionary to be used as a NSAttributedString's attributes
 */
- (NSDictionary<NSString *, id> * _Nonnull)attributedDictionary;

@end
