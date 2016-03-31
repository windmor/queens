//
//  ViewController.m
//  queens
//
//  Created by Liliya Sayfutdinova on 3/21/16.
//  Copyright © 2016 Liliya Sayfutdinova. All rights reserved.
//

#import "ViewController.h"
#import "NIBoard.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NIBoard *board = [NIBoard new];
    // set board size
    [board setBoardWithSide:4];
    [board setQueens];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
