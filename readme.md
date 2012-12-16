This is an example project that uses an objective-c category so that an NSAlert can be displayed and the result immediately processed without the need to create a delegate method in your class.

Example call:

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


If a nil is passed for the cancelButtonTitle, then the onCancel block is never called. If used, the cancel button is the last button added.