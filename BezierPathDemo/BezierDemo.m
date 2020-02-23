//
//  BezierDemo.m
//  BezierPathDemo
//
//  Created by Rudolf Farkas on 23.02.20.
//  Copyright © 2020 Rudolf Farkas. All rights reserved.
//

#import <Cocoa/Cocoa.h>         // include the Cocoa Frameworks
#import "BezierDemo.h"
#import "NSBezierPath+QuadCurve.h"

@implementation BezierView        // implementation of DemoView class

// https://stackoverflow.com/questions/3162645/convert-a-quadratic-bezier-to-a-cubic-one
//    extension NSBezierPath {
//        public func addQuadCurve(to qp2: CGPoint, controlPoint qp1: CGPoint) {
//            let qp0 = self.currentPoint
//            self.curve(to: qp2,
//                       controlPoint1: qp0 + (2.0/3.0)*(qp1 - qp0),
//                       controlPoint2: qp2 + (2.0/3.0)*(qp1 - qp2))
//        }

//    {
// qp0 ~ source
// qp2 ~ center
// qp1 ~ quadControlPoint


- (void)drawRect:(NSRect)rect   // instance method implementation
{

    [[NSColor whiteColor] set];   // set the drawing color to white
    NSRectFill([self bounds]);    // fill the view with white

    [[NSColor blackColor] set];   // set the drawing color to black

    CGPoint point11 = CGPointMake(100, 100);
    CGPoint point12 = CGPointMake(100, 300);
    CGPoint point21 = CGPointMake(300, 100);
    CGPoint point22 = CGPointMake(300, 300);

    {
        [[NSColor blackColor] set];
        NSBezierPath *path = [NSBezierPath bezierPath];
        [path setLineWidth:2];
        [path setLineCapStyle:NSRoundLineCapStyle];
        [path moveToPoint:point11];
        [path quadCurveTo:point22 with:CGPointMake(point12.x, point12.y)];
        [path stroke];
    }
    {
        [[NSColor redColor] set];
        NSBezierPath *path = [NSBezierPath bezierPath];
        [path setLineWidth:2];
        [path setLineCapStyle:NSRoundLineCapStyle];
        [path moveToPoint:point11];
        [path quadCurveTo:point22 with:CGPointMake(point21.x, point21.y)];
        [path stroke];
    }
    {
        [[NSColor greenColor] set];
        NSBezierPath *path = [NSBezierPath bezierPath];
        [path setLineWidth:2];
        [path setLineCapStyle:NSRoundLineCapStyle];
        [path moveToPoint:point12];
        [path quadCurveTo:point21 with:CGPointMake(point11.x, point11.y)];
        [path stroke];
    }
    {
        [[NSColor blueColor] set];
        NSBezierPath *path = [NSBezierPath bezierPath];
        [path setLineWidth:2];
        [path setLineCapStyle:NSRoundLineCapStyle];
        [path moveToPoint:point12];
        [path quadCurveTo:point21 with:CGPointMake(point22.x, point22.y)];
        [path stroke];
    }

} // end of drawRect: override method

-(void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:self];
}

@end  // end of DemoView implementation
