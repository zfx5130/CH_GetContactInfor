//
//  ViewController.m
//  CH_GetContactInfor
//
//  Created by 耗子 on 16/10/21.
//  Copyright © 2016年 DogCat. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+getContactInfor.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *nameLbl;

@property (strong, nonatomic) IBOutlet UILabel *phoneLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)readContactInfor:(UIButton *)sender {
    
    [self CheckAddressBookAuthorizationandGetPeopleInfor:^(NSDictionary *data) {
        if (data != nil) {
            _nameLbl.text = data[@"name"];
            _phoneLbl.text = data[@"phone"];
        }
    }];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
