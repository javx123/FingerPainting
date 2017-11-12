//
//  LineSegment.h
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface LineSegment : NSObject

@property (nonatomic, assign) CGPoint firstPoint;
@property (nonatomic, assign) CGPoint secondPoint;

- (instancetype)initWithFirstPoint:(CGPoint)firstPoint secondPoint:(CGPoint)secondPoint;

@end

