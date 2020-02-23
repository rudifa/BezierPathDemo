//
//  Tiny.m
//  AnimationDemo
//
//  Created by Rudolf Farkas on 23.02.20.
//  Copyright © 2020 Rudolf Farkas. All rights reserved.
//

//#import <Foundation/Foundation.h>
/* Tiny.m
 * A tiny Cocoa application that creates a window
 * and then displays graphics in it.
 * IB is not used to create this application.
 */

#import <Cocoa/Cocoa.h>         // include the Cocoa Frameworks
#import "Tiny.h"

/************************************************************
 ** A DemoView instance object of this class draws the image.
 */

//@interface DemoView : NSView    // interface of DemoView class
//{                               // (subclass of NSView class)
//}
//- (void)drawRect:(NSRect)rect;  // instance method interface
//@end

@implementation DemoView        // implementation of DemoView class

#define X(t) (sin(t)+1) * width * 0.5     // macro for X(t)
#define Y(t) (cos(t)+1) * height * 0.5    // macro for Y(t)

- (void)drawRect:(NSRect)rect   // instance method implementation
{
    double f,g;
    double const pi = 2 * acos(0.0);

    int n = 12;                 // number of sides of the polygon

    // get the size of the application's window and view objects
    float width  = [self bounds].size.width;
    float height = [self bounds].size.height;

    [[NSColor whiteColor] set];   // set the drawing color to white
    NSRectFill([self bounds]);    // fill the view with white

    // the following statements trace two polygons with n sides
    // and connect all of the vertices with lines

    [[NSColor blackColor] set];   // set the drawing color to black

    for (f=0; f<2*pi; f+=2*pi/n) {        // draw the fancy pattern
        for (g=0; g<2*pi; g+=2*pi/n) {
            NSPoint p1 = NSMakePoint(X(f),Y(f));
            NSPoint p2 = NSMakePoint(X(g),Y(g));
            [NSBezierPath strokeLineFromPoint:p1 toPoint:p2];
        }
    }

} // end of drawRect: override method

 /* windowWillClose: is a delegate method that gets invoked when
 * the on-screen window is about to close (user clicked close box).
 * In this case, we force the entire application to terminate.
 */

-(void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:self];
}

@end  // end of DemoView implementation


