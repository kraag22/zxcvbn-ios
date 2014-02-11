//
//  DBAppDelegate.m
//  Zxcvbn
//
//  Created by Leah Culver on 2/9/14.
//  Copyright (c) 2014 Dropbox. All rights reserved.
//

#import "DBAppDelegate.h"

#import "DBZxcvbn.h"

@implementation DBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    DBZxcvbn *zxcvbn = [[DBZxcvbn alloc] init];

    NSArray *testPasswords = @[
                               @"zxcvbn",
                               @"qwER43@!",
                               @"Tr0ub4dour&3",
                               @"correcthorsebatterystaple",
                               @"coRrecth0rseba++ery9.23.2007staple$",

                               @"D0g..................",
                               @"abcdefghijk987654321",
                               @"neverforget13/3/1997",
                               @"1qaz2wsx3edc",

                               @"temppass22",
                               @"briansmith",
                               @"briansmith4mayor",
                               @"password1",
                               @"viking",
                               @"thx1138",
                               @"ScoRpi0ns",
                               @"do you know",
                               
                               @"ryanhunter2000",
                               @"rianhunter2000",
                               
                               @"asdfghju7654rewq",
                               @"AOEUIDHG&*()LS_",
                               
                               @"12345678",
                               @"defghi6789",
                               
                               @"rosebud",
                               @"Rosebud",
                               @"ROSEBUD",
                               @"rosebuD",
                               @"ros3bud99",
                               @"r0s3bud99",
                               @"R0$38uD99",
                               
                               @"verlineVANDERMARK",
                               
                               @"eheuczkqyq",
                               @"rWibMFACxAUGZmxhVncy",
                               @"Ba9ZyWABu99[BK#6MBgbH88Tofv)vs$w",
                               ];

    for (NSString *password in testPasswords) {
        NSLog(@"** Password: %@", password);
        DBResult *result = [zxcvbn passwordStrength:password];
        NSLog(@"Total entropy: %d", result.entropy);
    }

    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
