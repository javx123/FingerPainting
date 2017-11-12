//
//  ViewController.m
//  FingerPainting
//
//  Created by Javier Xing on 2017-11-11.
//  Copyright © 2017 Javier Xing. All rights reserved.
//

#import "ViewController.h"
#import "PaintingView.h"
#import "Line.h"
@import UIKit;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet PaintingView *paintingView;
@property (strong, nonatomic)Line * line;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clear:(id)sender {
    [self.paintingView clear];
}
- (IBAction)blackColour:(id)sender {
    NSLog(@"black");
    [self.paintingView.line changeColour:[UIColor blackColor]];
}
- (IBAction)redColour:(id)sender {
    NSLog(@"red");
    [self.paintingView.line changeColour:[UIColor redColor]];
}
- (IBAction)greenColour:(id)sender {
    NSLog(@"green");
    [self.paintingView.line changeColour:[UIColor greenColor]];
}
- (IBAction)yellowColour:(id)sender {
    NSLog(@"yellow");
    [self.paintingView.line changeColour:[UIColor yellowColor]];
}
- (IBAction)purpleColour:(id)sender {
    NSLog(@"purple");
    [self.paintingView.line changeColour:[UIColor purpleColor]];
}
- (IBAction)blueColour:(id)sender {
    NSLog(@"blue");
    [self.paintingView.line changeColour:[UIColor blueColor]];
}
- (IBAction)grayColour:(id)sender {
    NSLog(@"gray");
    [self.paintingView.line changeColour:[UIColor grayColor]];
}
- (IBAction)orangeColour:(id)sender {
    NSLog(@"orange");
    [self.paintingView.line changeColour:[UIColor orangeColor]];
}











@end
