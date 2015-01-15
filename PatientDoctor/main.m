//
//  main.m
//  PatientDoctor
//
//  Created by Johnny on 2015-01-15.
//  Copyright (c) 2015 Empath Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Patient.h"
#import "Doctor.h"

#if __has_feature(objc_arc)
#define MDLog(format, ...) CFShow((__bridge CFStringRef)[NSString stringWithFormat:format, ## __VA_ARGS__]);
#else
#define MDLog(format, ...) CFShow([NSString stringWithFormat:format, ## __VA_ARGS__]);
#endif


int main(int argc, const char * argv[]) {
	@autoreleasepool {

		Patient* patient = [[Patient alloc] init];
		patient.name = @"Johnny";
		patient.age = 29;
		patient.sex = 'm';
		patient.hasHealthCard = TRUE;
		[patient.symptoms addObject:@"headache"];
		
		NSMutableSet* prescriptionRegistry = [[NSMutableSet alloc] init];
		
		Doctor* doctor = [[Doctor alloc] init];
		doctor.prescriptionRegistry = prescriptionRegistry;
		
		[doctor visit:patient];

		Prescription* prescription = [doctor requestMedication:patient];
		MDLog(@"Patient: %@, %d, %c", patient.name, patient.age, patient.sex);
		MDLog(@"Prescription Given: %s", prescription != NULL ? "YES" : "NO");
		
	}
	return 0;
}
