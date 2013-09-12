//
//  BIDViewController.m
//  Swap
//
//  Created by Maria Alice C. Lim on 9/12/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDViewController.h"
#define degreesToRadians(x) (M_PI * (x) / 180.0)

@implementation BIDViewController
@synthesize portrait;
@synthesize landscape;
@synthesize foos;
@synthesize bars;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setPortrait:nil];
    [self setLandscape:nil];
    [self setFoos:nil];
    [self setBars:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)
interfaceOrientation duration:(NSTimeInterval)duration {
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {
        self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform =
        CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.bounds = CGRectMake(0.0, 0.0, 320.0, 460.0);
    }
    else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform =
        CGAffineTransformMakeRotation(degreesToRadians(-90));
        self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }
    else if (interfaceOrientation ==
             UIInterfaceOrientationLandscapeRight) {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform =
        CGAffineTransformMakeRotation(degreesToRadians(90));
        self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }
}

- (IBAction)buttonTapped:(id)sender {
    if ([self.foos containsObject:sender]) {
        for (UIButton *oneFoo in foos) {
            oneFoo.hidden = YES;
        }
    }
    else {
        for (UIButton *oneBar in bars) {
            oneBar.hidden = YES;
        }
    }
}
@end
