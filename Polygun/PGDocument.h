//
//  PGDocument.h
//  Polygun
//
//  Created by Wil Gieseler on 11/10/13.
//  Copyright (c) 2013 Wil Gieseler. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "PGScene.h"
#import "PGManipulationManager.h"

@interface PGDocument : NSDocument {
    IBOutlet SCNView *sceneView;
}

@property PGScene *pgScene;
@property IBOutlet PGManipulationManager *manipulationManager;

- (IBAction)setManipulationModeToTag:(id)sender;
- (IBAction)setSelectionModeToTag:(id)sender;

@end
