//
//  PGIsOneTransformer.m
//  Polygun
//
//  Created by Wil Gieseler on 11/10/13.
//  Copyright (c) 2013 Wil Gieseler. All rights reserved.
//

#import "PGIsOneTransformer.h"

@implementation PGIsOneTransformer

+ (Class)transformedValueClass {
    return [NSNumber class];
}

+ (BOOL)allowsReverseTransformation {
    return YES;
}

- (int)number {
    return 1;
}

- (id)transformedValue:(id)value {
    if (value == nil) return @(NO);
    float floatvalue = 0;
    if ([value respondsToSelector: @selector(floatValue)]) {
        floatvalue = [value floatValue];
    } else {
        [NSException raise: NSInternalInconsistencyException
                    format: @"Value (%@) does not respond to -floatValue.",
         [value class]];
    }
    if (floatvalue == [self number])
        return @(YES);
    return @(NO);
}

- (id)reverseTransformedValue:(id)value {
    if ([value boolValue]) {
        return @([self number]);
    }
    return 0;
}

@end

@implementation PGIsTwoTransformer
- (int)number {
    return 2;
}
@end

@implementation PGIsZeroTransformer
- (int)number {
    return 0;
}
@end

@implementation PGIsThreeTransformer
- (int)number {
    return 3;
}
@end

@implementation PGIsFourTransformer
- (int)number {
    return 4;
}
@end