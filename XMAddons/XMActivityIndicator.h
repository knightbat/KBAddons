//
//  XMActivityIndicator.h
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,Activity_Type){
    
    BRSACTIVITYLARGE = 0 ,
    BRSACTIVITYSMALL

};

@interface XMActivityIndicator : UIView

@property (nonatomic,assign) Activity_Type activityType;
@property (nonatomic,strong) UIColor *activityColor;
@property (nonatomic,assign) UIActivityIndicatorViewStyle activityStyle;
@property (nonatomic,strong) NSNumber *activityIndicatorSize;
@property (nonatomic,assign) NSInteger activityCornerRadius;

- (void) activityShow: (BOOL) showStatus;
@end
