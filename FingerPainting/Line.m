//
//  Line.m
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//


#import "Line.h"


@implementation Line

- (instancetype)init
{
    self = [super init];
    if (self) {
        _segments = [[NSMutableArray alloc]init];
        _lineColour = [UIColor blackColor];
        _lineWidth = 5.0;
    }
    return self;
}

-(void)changeColour:(UIColor*)colour{
    self.lineColour = colour;
}
-(void)chanceLineWidth:(CGFloat)lineWidth{
    self.lineWidth = lineWidth;
}

-(UIBezierPath*)createLinePath{
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = self.lineWidth;
    path.lineCapStyle = kCGLineCapButt;
    [self.lineColour setStroke];
    
    for (LineSegment *segment in self.segments) {
        if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint)) {
            [path moveToPoint:segment.firstPoint];
            continue;
        }
        [path addLineToPoint:segment.firstPoint];
        [path addLineToPoint:segment.secondPoint];
    }
    return path;
}


@end

