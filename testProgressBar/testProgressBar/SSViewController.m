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
    
    _progressView= [[SSProgressView alloc] initWithFrame:self.view.bounds];
    _progressView.percent = 0;
    _progressView.color = [UIColor blueColor];
    [self.view addSubview:_progressView];
}


- (void)viewDidAppear:(BOOL)animated{

    //timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(letTheProgressBegin) userInfo:nil repeats:YES];
    displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(letTheProgressBegin)];
    [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}

- (void)letTheProgressBegin
{
    if (_progressView.percent < 100) {
        _progressView.percent = _progressView.percent + 0.25;
        _progressView.textContent = [NSString stringWithFormat:@"%.0f", _progressView.percent];
        [_progressView setNeedsDisplay];
        
    }else{
        _progressView.textContent = @"Done";
        [self.progressView setNeedsDisplay];

        [displayLink invalidate];

    }

}




@end
