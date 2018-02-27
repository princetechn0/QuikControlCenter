#import "control.h"

//Major thanks to CPDigitalDarkroom for his help.

%hook SBSearchScrollView

//Also disablespotlight
-(BOOL)gestureRecognizerShouldBegin:(id)arg1 {
[[NSClassFromString(@"SBControlCenterController") sharedInstance] presentAnimated:YES];
	return NO; }

%end

