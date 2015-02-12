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
        __block JPStringAttribute *string;

        beforeEach(^{
            string = [[JPStringAttribute alloc] init];
            string.font = [UIFont boldSystemFontOfSize:18.f];
            string.foregroundColor = [UIColor whiteColor];
            string.backgroundColor = [UIColor grayColor];
            string.strokeColor = [UIColor blackColor];
            string.ligature = @0;
            string.kern = @1;
            string.strikethroughStyle = @2;
            string.underlineStyle = @3;
            string.strokeWidth = @4;
            string.textEffect = NSTextEffectLetterpressStyle;
            string.baselineOffset = @5;
            string.underlineColor = [UIColor redColor];
            string.strikethroughColor = [UIColor blueColor];
        });

        it(@"creates dictionary", ^{
            NSDictionary *attributeDict = [string attributedDictionary];

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
        });
    });
});

SpecEnd
