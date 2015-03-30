//
//  JPAttributedStringSpec.m
//  JPAttributedString
//
//  Created by James Paolantonio on 2/12/15.
//  Copyright (c) 2015 James Paolantonio. All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "JPAttributedString.h"

SpecBegin(JPAttributedString)

describe(@"JPAttributedString", ^{
    describe(@"creates dictionaries", ^{
        __block JPStringAttribute *attribute;

        beforeEach(^{
            attribute = [[JPStringAttribute alloc] init];
            attribute.font = [UIFont boldSystemFontOfSize:18.f];
            attribute.foregroundColor = [UIColor whiteColor];
            attribute.backgroundColor = [UIColor grayColor];
            attribute.strokeColor = [UIColor blackColor];
            attribute.ligature = @0;
            attribute.kern = @1;
            attribute.strikethroughStyle = @2;
            attribute.underlineStyle = @3;
            attribute.strokeWidth = @4;
            attribute.textEffect = NSTextEffectLetterpressStyle;
            attribute.baselineOffset = @5;
            attribute.underlineColor = [UIColor redColor];
            attribute.strikethroughColor = [UIColor blueColor];
            attribute.shadow = [[NSShadow alloc] init];

            //NSParagraphStyle
            attribute.lineSpacing = 8.f;
            attribute.paragraphSpacing = 12.f;
            attribute.alignment = NSTextAlignmentRight;
            attribute.firstLineHeadIndent = 14.f;
            attribute.headIndent = 16.f;
            attribute.tailIndent = 18.f;
            attribute.lineBreakMode = NSLineBreakByTruncatingHead;
            attribute.minimumLineHeight = 20.f;
            attribute.maximumLineHeight = 22.f;
            attribute.baseWritingDirection = NSWritingDirectionRightToLeft;
            attribute.lineHeightMultiple = 2.f;
            attribute.paragraphSpacingBefore = 3.f;
            attribute.hyphenationFactor = 1.f;
            attribute.tabStops = @[[[NSTextTab alloc] initWithTextAlignment:NSTextAlignmentLeft location:16.f options:nil]];
            attribute.defaultTabInterval = 4.f;
        });

        it(@"creates dictionary", ^{
            NSDictionary *attributeDict = attribute.attributedDictionary;

            expect(attributeDict).toNot.beNil();
            expect(attributeDict[NSFontAttributeName]).to.equal([UIFont boldSystemFontOfSize:18.f]);
            expect(attributeDict[NSForegroundColorAttributeName]).to.equal([UIColor whiteColor]);
            expect(attributeDict[NSBackgroundColorAttributeName]).to.equal([UIColor grayColor]);
            expect(attributeDict[NSStrokeColorAttributeName]).to.equal([UIColor blackColor]);
            expect(attributeDict[NSLigatureAttributeName]).to.equal(@0);
            expect(attributeDict[NSKernAttributeName]).to.equal(@1);
            expect(attributeDict[NSStrikethroughStyleAttributeName]).to.equal(@2);
            expect(attributeDict[NSUnderlineStyleAttributeName]).to.equal(@3);
            expect(attributeDict[NSStrokeWidthAttributeName]).to.equal(@4);
            expect(attributeDict[NSTextEffectAttributeName]).to.equal(NSTextEffectLetterpressStyle);
            expect(attributeDict[NSBaselineOffsetAttributeName]).to.equal(@5);
            expect(attributeDict[NSUnderlineColorAttributeName]).to.equal([UIColor redColor]);
            expect(attributeDict[NSStrikethroughColorAttributeName]).to.equal([UIColor blueColor]);
            expect(attributeDict[NSShadowAttributeName]).toNot.beNil();
        });

        it(@"creates paragraphStyle", ^{
            NSDictionary *attributeDict = attribute.attributedDictionary;
            NSParagraphStyle *style = attributeDict[NSParagraphStyleAttributeName];

            expect(style).toNot.beNil();
            expect(style.lineSpacing).to.equal(8.f);
            expect(style.paragraphSpacing).to.equal(12.f);
            expect(style.alignment).to.equal(NSTextAlignmentRight);
            expect(style.firstLineHeadIndent).to.equal(14.f);
            expect(style.headIndent).to.equal(16.f);
            expect(style.tailIndent).to.equal(18.f);
            expect(style.lineBreakMode).to.equal(NSLineBreakByTruncatingHead);
            expect(style.minimumLineHeight).to.equal(20.f);
            expect(style.maximumLineHeight).to.equal(22.f);
            expect(style.baseWritingDirection).to.equal(NSWritingDirectionRightToLeft);
            expect(style.lineHeightMultiple).to.equal(2.f);
            expect(style.paragraphSpacingBefore).to.equal(3.f);
            expect(style.hyphenationFactor).to.equal(1.f);
            expect(style.tabStops).to.haveCountOf(1);
            expect(style.defaultTabInterval).to.equal(4.f);
        });
    });
});

SpecEnd
