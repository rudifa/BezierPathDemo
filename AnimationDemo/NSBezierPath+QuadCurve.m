//
//  NSBezierPath+QuadCurve.m
//  AnimationDemo
//
//  Created by Rudolf Farkas on 23.02.20.
//  Copyright © 2020 Rudolf Farkas. All rights reserved.
//

#import "NSBezierPath+QuadCurve.h"

@implementation NSBezierPath (QuadCurve)
- (void)quadCurveFrom:(CGPoint)from
                   to:(CGPoint)to
                 with:(CGPoint)quadControlPoint {

    CGPoint controlPoint1 = CGPointMake(from.x + (2.0/3.0)*(quadControlPoint.x - from.x),
                                        from.y + (2.0/3.0)*(quadControlPoint.y - from.y));
    CGPoint controlPoint2 = CGPointMake(to.x + (2.0/3.0)*(quadControlPoint.x - to.x),
                                        to.y + (2.0/3.0)*(quadControlPoint.y - to.y));

    [self moveToPoint:from];
    [self curveToPoint:to controlPoint1: controlPoint1 controlPoint2: controlPoint2];
}

- (void)quadCurveTo:(CGPoint)to
               with:(CGPoint)quadControlPoint {
    [self quadCurveFrom: self.currentPoint to: to with: quadControlPoint];
}

@end
