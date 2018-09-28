//
//  ViewController.m
//  ProgressView
//
//  Created by chhu02 on 2018/9/28.
//  Copyright © 2018 chase. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet ProgressView *progressView;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)valueChange:(UISlider *)sender {
    NSLog(@"%f",sender.value);
    //%在stringWithFormat有特殊的含义,不能直接使用,如果想要使用用两个%代表一个%
    self.valueLabel.text = [NSString stringWithFormat:@"%.2f%%",sender.value * 100];
    
    self.progressView.progressValue = sender.value;
    
}

@end
