//
//  SFHFKeychainUtils+DTExtras.h
//  DTTescoKit
//
//  Created by Daniel Tull on 10.10.2009.
//  Copyright 2009 Daniel Tull. All rights reserved.
//

#import "SFHFKeychainUtils.h"

@interface SFHFKeychainUtils (DTExtras)


+ (NSString *)dct_passwordForUsername:(NSString *)username
						  serviceName:(NSString *)serviceName;

+ (void)dct_setPassword:(NSString *)password 
			forUsername:(NSString *)username 
			serviceName:(NSString *)serviceName 
	     updateExisting:(BOOL)updateExisting;

+ (void)dct_setPassword:(NSString *)password
			forUsername:(NSString *)username
			serviceName:(NSString *)serviceName;
@end
