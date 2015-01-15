//
//  Patient.m
//  PatientDoctor
//
//  Created by Johnny on 2015-01-15.
//  Copyright (c) 2015 Empath Solutions. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init
{
	self = [super init];
	if (self) {
		_symptoms = [[NSMutableSet alloc] init];
	}
	return self;
}

@end
