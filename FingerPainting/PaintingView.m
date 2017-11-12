//
//  PaintingView.m
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "PaintingView.h"
//#import "Line.h"
#import "LineSegment.h"

@interface PaintingView()
//@property (nonatomic, strong) Line * line;

@end

@implementation PaintingView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _line = [[Line alloc]init];
    }
    return self;
}


#pragma mark - Touch Events

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint first = [touch previousLocationInView:self];
    LineSegment *segment = [[LineSegment alloc]initWithFirstPoint:first secondPoint:first];
    [self.line.segments addObject:segment];
    [self setNeedsDisplay];
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint second = [touch locationInView:self];
    CGPoint first = [touch previousLocationInView:self];
    LineSegment *segment = [[LineSegment alloc]initWithFirstPoint:first secondPoint:second];
    [self.line.segments addObject:segment];
    [self setNeedsDisplay];
}

#pragma mark - Drawing


- (void)drawRect:(CGRect)rect {
   UIBezierPath *linePath = [self.line createLinePath];
     [linePath stroke];
}


-(void)clear{
    [self.line.segments removeAllObjects];
    [self setNeedsDisplay];
}


@end
