//
//  JPStringAttribute.m
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import "JPStringAttribute.h"

@implementation JPStringAttribute

- (NSDictionary *)attributedDictionary {
    NSMutableDictionary *attributes = [[NSMutableDictionary alloc] init];
    if (self.font) {
        attributes[NSFontAttributeName] = [self.font copy];
    }
    if (self.paragraphStyle) {
        attributes[NSParagraphStyleAttributeName] = [self.paragraphStyle copy];
    }
    if (self.foregroundColor) {
        attributes[NSForegroundColorAttributeName] = [self.foregroundColor copy];
    }
    if (self.backgroundColor) {
        attributes[NSBackgroundColorAttributeName] = [self.backgroundColor copy];
    }
    if (self.ligature) {
        attributes[NSLigatureAttributeName] = [self.ligature copy];
    }
    if (self.kern) {
        attributes[NSKernAttributeName] = [self.kern copy];
    }
    if (self.strikethroughStyle) {
        attributes[NSStrikethroughStyleAttributeName] = [self.strikethroughStyle copy];
    }
    if (self.underlineStyle) {
        attributes[NSUnderlineStyleAttributeName] = [self.underlineStyle copy];
    }
    if (self.strokeColor) {
        attributes[NSStrokeColorAttributeName] = [self.strokeColor copy];
    }
    if (self.strokeWidth) {
        attributes[NSStrokeWidthAttributeName] = [self.strokeWidth copy];
    }
    if (self.shadow) {
        attributes[NSShadowAttributeName] = [self.shadow copy];
    }
    if (self.textEffect) {
        attributes[NSTextEffectAttributeName] = [self.textEffect copy];
    }
    if (self.baselineOffset) {
        attributes[NSBaselineOffsetAttributeName] = [self.baselineOffset copy];
    }
    if (self.underlineColor) {
        attributes[NSUnderlineColorAttributeName] = [self.underlineColor copy];
    }
    if (self.strikethroughColor) {
        attributes[NSStrikethroughColorAttributeName] = [self.strikethroughColor copy];
    }

    return attributes;
}

@end
