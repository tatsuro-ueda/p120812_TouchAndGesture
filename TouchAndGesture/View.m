//
//  View.m
//  TouchAndGesture
//
//  Created by 達郎 植田 on 12/08/12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
//        self.backgroundColor = [UIColor blueColor];
        layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, 100, 100);
        layer.contents = (id)[UIImage imageNamed:@"image.png"].CGImage;
        [self.layer addSublayer:layer];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];    
    CGPoint pt = [touch locationInView:self];
    layer.frame = CGRectMake(pt.x, pt.y, 100, 100);
}

@end
