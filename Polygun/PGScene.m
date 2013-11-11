//
//  PGScene.m
//  Polygun
//
//  Created by Wil Gieseler on 11/10/13.
//  Copyright (c) 2013 Wil Gieseler. All rights reserved.
//

#import "PGScene.h"

@implementation PGScene

- (id)init {
    if (self = [super init]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.scene = [SCNScene scene];
    
//    SCNNode *cameraNode = [SCNNode node];
//    cameraNode.camera = [SCNCamera camera];
//    [self.scene.rootNode addChildNode:cameraNode];
    
    SCNNode *cubeNode = [SCNNode nodeWithGeometry:[SCNBox boxWithWidth:1 height:1 length:1 chamferRadius:0]];
    cubeNode.position = SCNVector3Make(0, 0, 10);
    
    [self.scene.rootNode addChildNode:cubeNode];

    
}

@end
