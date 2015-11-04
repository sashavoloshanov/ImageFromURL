//
//  ShowImageViewController.m
//  ImageURL
//
//  Created by Voloshanov Sasha on 11/4/15.
//  Copyright © 2015 Sasha Voloshanov. All rights reserved.
//

#import "ShowImageViewController.h"

@interface ShowImageViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ShowImageViewController

- (instancetype)init {
    if (self = [super init]) {
        self.imageView.image = self.image;
    }
    return self;
}



@end
