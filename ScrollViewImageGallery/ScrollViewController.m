//
//  ViewController.m
//  ScrollViewImageGallery
//
//  Created by jason harrison on 2019-01-21.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    imageView1.clipsToBounds = YES;
    [self.scrollView addSubview:imageView1];
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    imageView2.clipsToBounds = YES;
    [self.scrollView addSubview:imageView2];
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-zoomed"]];
    imageView3.contentMode = UIViewContentModeScaleAspectFit;
    imageView3.clipsToBounds = YES;
    [self.scrollView addSubview:imageView3];
    imageView3.translatesAutoresizingMaskIntoConstraints = NO;

    
   
    
    
    self.scrollView.pagingEnabled = YES;
    
 
    [imageView1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [imageView2.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView2.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [imageView3.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView3.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    
    [imageView1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [imageView1.trailingAnchor constraintEqualToAnchor:imageView2.leadingAnchor].active = YES;
    [imageView2.trailingAnchor constraintEqualToAnchor:imageView3.leadingAnchor].active = YES;

    [imageView3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    // width and height
    [imageView1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [imageView2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [imageView3.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    
    [imageView1.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [imageView2.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    [imageView3.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    

}


@end
