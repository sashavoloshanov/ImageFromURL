//
//  ViewController.m
//  ImageURL
//
//  Created by Voloshanov Sasha on 11/4/15.
//  Copyright © 2015 Sasha Voloshanov. All rights reserved.
//

#import "ViewController.h"
#import "ShowImageViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

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

- (UIImage *)getImageFromURLString:(NSString *)urlString {
    
    NSURL *imageURL = [NSURL URLWithString:urlString];
    NSData *imageData = [NSData dataWithContentsOfURL:imageURL];
    UIImage *image = [UIImage imageWithData:imageData];
    
    return image;
}


- (IBAction)showImageButtonAction:(UIButton *)sender {
    
    ShowImageViewController *showImageViewController = [[ShowImageViewController alloc] init];
    showImageViewController.image = [self getImageFromURLString:self.textField.text];
}

@end
