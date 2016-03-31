//
//  NIBoard.h
//  queens
//
//  Created by Liliya Sayfutdinova on 3/21/16.
//  Copyright © 2016 Liliya Sayfutdinova. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NIBoard : NSObject

@property (nonatomic) NSInteger queensCount;

- (void)setBoardWithSide:(NSInteger)side;
- (void)setQueens;

@end
