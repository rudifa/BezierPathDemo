//
//  NSBezierPath+QuadCurve.h
//  BezierPathDemo
//
//  Created by Rudolf Farkas on 23.02.20.
//  Copyright © 2020 Rudolf Farkas. All rights reserved.
//

#ifndef NSBezierPath_QuadCurve_h
#define NSBezierPath_QuadCurve_h

#import <Cocoa/Cocoa.h>         // include the Cocoa Frameworks

/// Extends NSBezierPath
@interface NSBezierPath (QuadCurve)
/// Draws a quadratic Bezier curve
/// @param from  point
/// @param to  point
/// @param quadControlPoint point
- (void)quadCurveFrom:(CGPoint)from
                   to:(CGPoint)to
                 with:(CGPoint)quadControlPoint;
/// Draws a quadratic Bezier curve from the current point
/// @param to point
/// @param quadControlPoint point 
- (void)quadCurveTo:(CGPoint)to
                 with:(CGPoint)quadControlPoint;
@end

#endif /* NSBezierPath_QuadCurve_h */
