//
//  ProgressView.h
//  testProgressBar
//
//  Created by Shrutesh Sharma on 18/02/15.

//

#import <UIKit/UIKit.h>

@interface SSProgressView : UIView{
    CGFloat startAngle;
    CGFloat endAngle;
}


@property (nonatomic) int percent;

@end