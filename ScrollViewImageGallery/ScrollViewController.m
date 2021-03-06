//
//  ViewController.m
//  ScrollViewImageGallery
//
//  Created by jason harrison on 2019-01-21.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "ScrollViewController.h"
#import "ZoomViewController.h"

@interface ScrollViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;




@property (strong, nonatomic) UITapGestureRecognizer *tapGestureRecognizer;

@end


@implementation ScrollViewController



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITapGestureRecognizer *)sender{
    
    ZoomViewController *targetView = segue.destinationViewController;
    
    int side = self.scrollView.contentOffset.x / self.scrollView.frame.size.width;
    [targetView showDetail:side];
}



/*
 // When any of my buttons are pressed, push the next view
 - (IBAction)buttonPressed:(id)sender
 {
 [self performSegueWithIdentifier:@"MySegue" sender:sender];
 }
 
 // This will get called too before the view appears
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 if ([[segue identifier] isEqualToString:@"MySegue"]) {
 
 // Get destination view
 SecondView *vc = [segue destinationViewController];
 
 // Get button tag number (or do whatever you need to do here, based on your object
 NSInteger tagIndex = [(UIButton *)sender tag];
 
 // Pass the information to your destination view
 [vc setSelectedButton:tagIndex];
 }
 }
 
 */


- (void)imageTapped:(UITapGestureRecognizer *)sender {
    NSLog(@"tapped!!!!!!!");
    
    
    
    
    //NSLog(@"offset", sender.view.subviews[0].)
    
    NSLog(@"pressed TAG %ld", sender.view.subviews[0].tag);
    
   /* if([sender.view isEqual:self.scrollView.subviews[0]]){
        NSLog(@"you tapped image 1");
    }else if([sender.view isEqual:self.scrollView.subviews[1]]){
        NSLog(@"you tapped image 2");
    }else {
        NSLog(@"you tapped image 3");
    }*/
    
    [self performSegueWithIdentifier:@"imageDetailSegue" sender:sender];
    
}





- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView.delegate = self;
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    imageView1.clipsToBounds = YES;
    [self.scrollView addSubview:imageView1];
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    imageView1.userInteractionEnabled = YES;
    imageView1.tag = 1;
    
    
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    imageView2.clipsToBounds = YES;
    [self.scrollView addSubview:imageView2];
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    imageView2.userInteractionEnabled = YES;
    imageView2.tag = 2;
    
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-zoomed"]];
    imageView3.contentMode = UIViewContentModeScaleAspectFit;
    imageView3.clipsToBounds = YES;
    [self.scrollView addSubview:imageView3];
    imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    imageView3.userInteractionEnabled = YES;
    imageView3.tag = 3;
    
   
    
    
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
    
    
    self.tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    
    
    [self.scrollView addGestureRecognizer:self.tapGestureRecognizer];
    
    
}

/*
 - (void)viewDidLoad {
 [super viewDidLoad];
 
 self.basketImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
 
 
 
 self.pet = [[Pet alloc] initWithName:@"Russell"];
 
 self.panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(petPanned:)];
 self.pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(applePinched:)];
 
 
 [self.petImage addGestureRecognizer:self.panGesture];
 [self.appleImage addGestureRecognizer:self.pinchGesture];
 }
 
 
 
 - (IBAction)applePinched:(UIPinchGestureRecognizer *)sender {
 
 
 */

@end
