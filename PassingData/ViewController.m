//
//  ViewController.m
//  PassingData
//
//  Created by Alfred on 16/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "ViewController.h"
#import "DetailVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - prepareForSegue

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([sender isKindOfClass:[UIButton class]])
    {
        if ([segue.destinationViewController isKindOfClass:[DetailVC class]])
        {
            DetailVC *nextViewController = segue.destinationViewController;
            nextViewController.dataFromFirstView = self.textView.text;
        }
    }
}
@end
