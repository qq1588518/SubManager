
#import <UIKit/UIKit.h>

#import "SubManagerAppDelegate.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	if(setuid(0) && setgid(0) == 0){
		NSLog(@"Could not get root privileges.");
		exit(EXIT_FAILURE);
	}
	int retVal = UIApplicationMain(argc, argv, nil, NSStringFromClass([SubManagerAppDelegate class]));
	[pool release];
	return retVal;
}
