//
//  DraggableGood.h
//  TouchResolution
//
//  Created by Brandon Williams on 5/25/10.
//  Copyright 2010 Opetopic. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DraggableGood : UIView {

	CGPoint velocity, previousPosition;
}

-(void) loop;

@end
