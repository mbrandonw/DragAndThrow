//
//  DraggableBad.m
//  TouchResolution
//
//  Created by Brandon Williams on 5/25/10.
//  Copyright 2010 Opetopic. All rights reserved.
//

#import "DraggableBad.h"
#import <QuartzCore/QuartzCore.h>

@implementation DraggableBad


-(id) initWithCoder:(NSCoder *)aDecoder {
	if (self = [super initWithCoder:aDecoder]) {
		
		CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(loop)];
		[displayLink setFrameInterval:1];
		[displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
	}
	return self;
}


-(void) loop {
	
	// update the square's position due to its velocity
	self.center = CGPointMake(self.center.x + velocity.x, self.center.y + velocity.y);
	
	// reduce the velocity due to friction
	velocity.x *= 0.97f;
	velocity.y *= 0.97f;

	// make the square bounce off the sides of the screen
	if (self.center.x <= 0.0f)
		velocity.x = ABS(velocity.x);
	if (self.center.y <= 0.0f)
		velocity.y = ABS(velocity.y);
	if (self.center.x >= self.superview.frame.size.width)
		velocity.x = -ABS(velocity.x);
	if (self.center.y >= self.superview.frame.size.height)
		velocity.y = -ABS(velocity.y);
}


-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
	// snap the square to the touch that is dragging
	self.center = [[touches anyObject] locationInView:self.superview];
	
	// zero out the velocity while dragging the square
	velocity = CGPointZero;
}


-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
	
	// use the current and previous position of the dragging touch to computer the velocity of the square
	
	UITouch *touch = [touches anyObject];
	CGPoint p  = [touch locationInView:self.superview];
	CGPoint pp = [touch previousLocationInView:self.superview];
	
	velocity = CGPointMake(p.x - pp.x, p.y - pp.y);
}


- (void)dealloc {
    [super dealloc];
}


@end
