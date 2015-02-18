//
//  ViewController.h
//  testProgressBar
//
//  Created by Shrutesh Sharma on 18/02/15.

//

#import <UIKit/UIKit.h>
#import "SSProgressView.h"

@interface SSViewController : UIViewController{
    SSProgressView *progressView;
    NSTimer *timer;
    
    CADisplayLink *displayLink;
}


@end

