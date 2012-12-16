//
//  AppDelegate.m
//  Tester
//
//  Created by Aaron Bratcher on 12/15/2012.
//  Copyright (c) 2012 Market Force. All rights reserved.
//

#import "AppDelegate.h"
#import "NSAlert+Blocks.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

- (IBAction)GoClicked:(id)sender {
	[NSAlert showSheetModalForWindow:self.window
									 message:@"This is a test message"
						  informativeText:@"This is some informative text that will be displayed."
								 alertStyle:NSWarningAlertStyle
						cancelButtonTitle:@"Don't Allow"
						otherButtonTitles:@[@"Allow",@"Always Allow"]
								  onDismiss:^(int buttonIndex)  {
									  NSLog([NSString stringWithFormat:@"button pressed %i",buttonIndex]);
								  }
									onCancel:^ {
										NSLog(@"cancelled");
									}];
}

@end
