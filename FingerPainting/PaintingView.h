//
//  PaintingView.h
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"

@interface PaintingView : UIView
@property (nonatomic, strong) Line * line;

-(void)clear;

@end

