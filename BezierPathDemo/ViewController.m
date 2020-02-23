//
//  ViewController.m
//  BezierPathDemo
//
//  Created by Rudolf Farkas on 23.02.20.
//  Copyright © 2020 Rudolf Farkas. All rights reserved.
//

#import "ViewController.h"
#import "Tiny.h"
#import "BezierDemo.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)loadView {
    self.view = [[NSView alloc] initWithFrame: NSMakeRect(100.0, 350.0, 800.0, 400.0)];

    [self.view setWantsLayer:YES];
    [self.view.layer setBackgroundColor:[[NSColor lightGrayColor] CGColor]];
    //self.view.autoresizingMask = NSViewAutoresizingFlexibleWidth | NSViewAutoresizingFlexibleHeight;

    NSRect    graphicsRect = NSMakeRect(0.0, 0.0, 400.0, 400.0);
    NSView   *myView = [[TinyView alloc] initWithFrame:graphicsRect];
    NSView   *myView2 = [[BezierView alloc] initWithFrame: NSMakeRect(400.0, 0.0, 400.0, 400.0)];

    [self.view addSubview: myView];
    [self.view addSubview: myView2];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
