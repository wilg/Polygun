//
//  PGDocument.h
//  Polygun
//
//  Created by Wil Gieseler on 11/10/13.
//  Copyright (c) 2013 Wil Gieseler. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PGDocument : NSDocument {
    IBOutlet SCNView *sceneView;
}

@property SCNScene *scene;

@end
