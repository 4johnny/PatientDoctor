//
//  Doctor.h
//  PatientDoctor
//
//  Created by Johnny on 2015-01-15.
//  Copyright (c) 2015 Empath Solutions. All rights reserved.
//

#import "Patient.h"
#import "Prescription.h"

@interface Doctor : Person {
	@protected NSMutableSet* _acceptedPatients;
}

@property NSString* specialization;
@property NSMutableSet* prescriptionRegistry;

-(BOOL) accept:(Patient *)patient;
-(BOOL) visit:(Patient*)person;
-(Prescription *) requestMedication:(Patient *)patient;

@end
