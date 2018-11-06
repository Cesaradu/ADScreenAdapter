//
//  ViewController.m
//  ADScreenAdapter
//
//  Created by user on 2018/11/5.
//  Copyright © 2018年 user. All rights reserved.
//

#import "ViewController.h"
#import "ScreenSuit.h"
#import "ScreenAdapter.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.tableHeaderView = [self buildTableHeadView];
    [self.view addSubview:self.tableView];
    
}

- (UIView *)buildTableHeadView {
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, [ScreenSuit suitHeight:240])];
    headView.backgroundColor = [UIColor lightGrayColor];
    
    UIImageView *headImage = [[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth/2 - [ScreenSuit suitHeight:40], [ScreenSuit suitHeight:70], [ScreenSuit suitHeight:80], [ScreenSuit suitHeight:80])];
    headImage.backgroundColor = [UIColor redColor];
    headImage.layer.cornerRadius = [ScreenSuit suitHeight:40];
    headImage.layer.masksToBounds = YES;
    [headView addSubview:headImage];
    
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth/2 - [ScreenSuit suitWidth:100], CGRectGetMaxY(headImage.frame) + [ScreenSuit suitHeight:10], [ScreenSuit suitWidth:200], [ScreenSuit suitHeight:20])];
    nameLabel.backgroundColor = [UIColor greenColor];
    nameLabel.text = @"测试一下";
    nameLabel.font = [UIFont systemFontOfSize:[ScreenSuit suit:16]];
    [headView addSubview:nameLabel];
    
    
    return headView;
}

#pragma mark - UITableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [ScreenSuit suitHeight:50];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    }
    return cell;
}



@end
