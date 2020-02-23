//
//  ViewController.m
//  AnimationDemo
//
//  Created by Rudolf Farkas on 23.02.20.
//  Copyright © 2020 Rudolf Farkas. All rights reserved.
//

#import "ViewController.h"
#import "Tiny.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.

    //setup();

}

- (void)loadView {
    self.view = [[NSView alloc] initWithFrame: NSMakeRect(100.0, 350.0, 400.0, 400.0)];

    [self.view setWantsLayer:YES];
    [self.view.layer setBackgroundColor:[[NSColor lightGrayColor] CGColor]];
    //self.view.autoresizingMask = NSViewAutoresizingFlexibleWidth | NSViewAutoresizingFlexibleHeight;

    NSRect    graphicsRect = NSMakeRect(0.0, 0.0, 400.0, 400.0); // contains an origin, width, height
    NSView   *myView = [[DemoView alloc] initWithFrame:graphicsRect];      // typed pointer to NSView object

    [self.view addSubview: myView];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

/*
 * setup(  ) performs the functions that would normally be performed by
 * loading a nib file.
 */

void setup(  )
{

}


@end
