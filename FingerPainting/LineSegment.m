//
//  LineSegment.m
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "LineSegment.h"

@implementation LineSegment

- (instancetype)initWithFirstPoint:(CGPoint)firstPoint secondPoint:(CGPoint)secondPoint
{
    self = [super init];
    if (self) {
        _firstPoint = firstPoint;
        _secondPoint = secondPoint;
    }
    return self;
}



@end

