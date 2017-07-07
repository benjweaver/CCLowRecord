#import "CC.h"

%hook CCUIRecordScreenShortcut


+ (bool)isInternalButton
{
	return NO;
}

+ (bool)isSupported:(int)arg1
{
	return YES;
}

- (UIImage *)glyphImageForState:(UIControlState)state
{
	return [UIImage imageNamed:@"RecordVideo-OrbHW@2x.png" inBundle:[NSBundle bundleWithPath:@"/Applications/Camera.app/"]];
}

%end

%hook CCUILowPowerModeSetting

+ (bool)isInternalButton
{
	return NO;
}

+ (bool)isSupported:(int)arg1
{
	return YES;
}


+ (NSString *)statusOffString
{
	return @"Low Power Mode: Off";
}


+ (NSString *)statusOnString
{
	return @"Low Power Mode: On";
}


- (UIImage *)glyphImageForState:(UIControlState)state
{
	return [UIImage imageNamed:@"Shortcut-Battery" inBundle:[NSBundle bundleWithPath:@"/Applications/Preferences.app/"]];
}

%end