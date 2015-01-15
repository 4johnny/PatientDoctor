//
//  Doctor.m
//  PatientDoctor
//
//  Created by Johnny on 2015-01-15.
//  Copyright (c) 2015 Empath Solutions. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@implementation Doctor

- (instancetype)init
{
	self = [super init];
	if (self) {
		_acceptedPatients = [[NSMutableSet alloc] init];
	}
	return self;
}

-(BOOL) accept:(Patient *)patient {
	return patient.hasHealthCard;
}

-(BOOL) visit:(Patient *)patient {
	if (![self accept:patient]) return FALSE;
	[_acceptedPatients addObject:patient];
	
	return TRUE;
}

-(Prescription *) requestMedication:(Patient *)patient {
	if (![_acceptedPatients containsObject:patient]) return NULL;
	if (patient.symptoms.count == 0) return NULL;

	Prescription* prescription = [[Prescription alloc] init];
	[self.prescriptionRegistry addObject:prescription];
	
	return prescription;
}

@end
