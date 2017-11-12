//
//  Line.h
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LineSegment.h"

@import UIKit;

@interface Line : NSObject

@property (nonatomic, assign) UIColor *lineColour;
@property (nonatomic, strong)NSMutableArray *segments;
@property (nonatomic, assign)CGFloat lineWidth;

-(void)changeColour:(UIColor*)colour;
-(UIBezierPath*)createLinePath;

@end

