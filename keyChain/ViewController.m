//
//  ViewController.m
//  keyChain
//
//  Created by chenfenglong on 16/9/9.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import "ViewController.h"
#import <Security/Security.h>
#import "WQUserDataManager.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *lbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *string = [WQUserDataManager readPassWord];
    self.lbl.text = string;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClick:(id)sender {
    [WQUserDataManager savePassWord:self.textField.text];
    self.lbl.text = [WQUserDataManager readPassWord];
}

@end
