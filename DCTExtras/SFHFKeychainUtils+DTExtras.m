//
//  SFHFKeychainUtils+DTExtras.m
//  DTTescoKit
//
//  Created by Daniel Tull on 10.10.2009.
//  Copyright 2009 Daniel Tull. All rights reserved.
//

#import "SFHFKeychainUtils+DTExtras.h"

@implementation SFHFKeychainUtils (DTExtras)

+ (NSString *)dct_passwordForUsername:(NSString *)username
					  	  serviceName:(NSString *)serviceName {
	
	NSError *error = nil;
	NSString *password = [SFHFKeychainUtils getPasswordForUsername:username andServiceName:serviceName error:&error];
	
	if (error) return @"";
	if (!password) return @"";
	
	return password;
}

+ (void)dct_setPassword:(NSString *)password 
			forUsername:(NSString *)username 
			serviceName:(NSString *)serviceName 
	 	 updateExisting:(BOOL)updateExisting {

	NSError *error = nil;
	
	[SFHFKeychainUtils storeUsername:username 
						 andPassword:password 
					  forServiceName:serviceName 
					  updateExisting:updateExisting 
							   error:&error];
}

+ (void)dct_setPassword:(NSString *)password
			forUsername:(NSString *)username
			serviceName:(NSString *)serviceName {
	[SFHFKeychainUtils setPassword:password forUsername:username serviceName:serviceName updateExisting:YES];
}


@end
