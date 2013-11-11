//
//  PGManipulationManager.h
//  Polygun
//
//  Created by Wil Gieseler on 11/10/13.
//  Copyright (c) 2013 Wil Gieseler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PGManipulationManager : NSObject

typedef NS_ENUM(NSInteger, PGSelectionMode) {
    PGSelectionModeVertex   = 0,
    PGSelectionModeEdge     = 1,
    PGSelectionModeFace     = 2,
    PGSelectionModeObject   = 3
};

@property (assign) PGSelectionMode selectionMode;

typedef NS_ENUM(NSInteger, PGManipulationMode) {
    PGManipulationModePan       = 0,
    PGManipulationModeMove      = 1,
    PGManipulationModeRotate    = 2,
    PGManipulationModeScale     = 3
};

@property (assign) PGManipulationMode manipulationMode;

@end
