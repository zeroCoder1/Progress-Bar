//
//  ViewController.m
//  testProgressBar
//
//  Created by Shrutesh Sharma on 18/02/15.

//

#import "SSViewController.h"

@interface SSViewController ()

@end

@implementation SSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    progressView= [[SSProgressView alloc] initWithFrame:self.view.bounds];
    progressView.percent = 0;
    [self.view addSubview:progressView];
}


- (void)viewDidAppear:(BOOL)animated{

    timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(letTheProgressBegin) userInfo:nil repeats:YES];
}

- (void)letTheProgressBegin
{
    if (progressView.percent < 100) {
        progressView.percent = progressView.percent + 1.0;
        [progressView setNeedsDisplay];
    }
    else {
        [timer invalidate];
        timer = nil;
    }
}



@end
