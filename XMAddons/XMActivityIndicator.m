//
//  XMActivityIndicator.m
//

#import "XMActivityIndicator.h"

@implementation XMActivityIndicator{
    
    UIActivityIndicatorView *activity;
}
@synthesize activityType,activityIndicatorSize;
- (id)initWithFrame:(CGRect)frame
{
    activityType = BRSACTIVITYLARGE;
    activityIndicatorSize = @100;

    self = [super initWithFrame:frame];
    
    if (self) {
        [self setupActivity];
    }
    return self;
}

- (id)init{
    
    activityType = BRSACTIVITYLARGE;
 
    if (activityType == BRSACTIVITYSMALL) {
        self = [super initWithFrame:CGRectMake(0,0, [activityIndicatorSize floatValue], [activityIndicatorSize floatValue])];
    } else {
        self = [super initWithFrame:CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
           activityIndicatorSize = @100;
    }
    self.layer.cornerRadius = self.activityCornerRadius;
    if (self) {
        [self setupActivity];
    }
    return self;
}

- (void) setupActivity{
    
    self.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5];
    //    self.layer.cornerRadius = 5;
    self.layer.masksToBounds = YES;
    activity = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:self.activityStyle];
    activity.center = self.center;
    activity.color = self.activityColor;
    [self addSubview:activity];
    [self bringSubviewToFront:activity];
    self.hidden =YES;
}

-(void)setActivityType:(Activity_Type)type {
    
    activityType = type;
    if (type == BRSACTIVITYSMALL) {
        self.frame=CGRectMake(0,0, [activityIndicatorSize floatValue], [activityIndicatorSize floatValue]);
        activity.center = self.center;
    } else {
        self.frame=CGRectMake(0,0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
        activity.center = self.center;
    }
}

-(Activity_Type)activityType {
    return activityType;
}

-(void)setActivityIndicatorSize:(NSNumber *)size {
    
    activityIndicatorSize = size;
    if (activityType == BRSACTIVITYSMALL) {
        self.frame=CGRectMake(0,0, [size floatValue], [size floatValue]);
        activity.center = self.center;
        
    }
}

-(NSNumber *)activityIndicatorSize {
    return activityIndicatorSize;
}

-(void)setActivityCornerRadius:(NSInteger)cornerRadius {
    
    if (activityType == BRSACTIVITYSMALL) {
         self.layer.cornerRadius = cornerRadius;
    }
}
-(void)setActivityColor:(UIColor *)activityColor {
    activity.color = activityColor;
}

-(void)setActivityStyle:(UIActivityIndicatorViewStyle)activityStyle {
    activity.activityIndicatorViewStyle = activityStyle;
}

- (void) activityShow: (BOOL) showStatus{
    
    if (showStatus) {
        
        [self.superview bringSubviewToFront:self];
        self.hidden =NO;
        [activity startAnimating];
        
    } else {
        
        self.hidden =YES;
        [activity stopAnimating];
    }
}

@end
