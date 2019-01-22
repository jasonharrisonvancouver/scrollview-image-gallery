//
//  ViewController.m
//  ScrollViewImageGallery
//
//  Created by jason harrison on 2019-01-21.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ZoomViewController.h"

@interface ZoomViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ZoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-zoomed"]];
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    imageView1.clipsToBounds = YES;
    [self.scrollView addSubview:imageView1];
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    [imageView1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    
    [imageView1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [imageView1.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    
}

// You must define this delegate method if you want to enable pinch/zoom
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    NSLog(@"In viewForZoomingInScrollView");
    // Don't check the value of zoomScale here
    return [self.scrollView subviews][0];
    
}




@end
