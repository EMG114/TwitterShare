//
//  ViewController.m
//  TwitterShare
//
//  Created by Erica on 6/20/17.
//  Copyright © 2017 Erica. All rights reserved.
//

#import "ViewController.h"
#import "Social/Social.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *tweetTextView;
-(void) configureTweetTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureTweetTextView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showShareAction:(id)sender {
    if([self.tweetTextView isFirstResponder]){ [self.tweetTextView resignFirstResponder];}
    UIAlertController *actionController = [UIAlertController alertControllerWithTitle: @"Message Title" message:@"Tweet your message" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle: @"Cancel" style: UIAlertActionStyleDefault handler:nil];
    
    UIAlertAction *tweetAction = [UIAlertAction actionWithTitle: @"Tweet" style: UIAlertActionStyleDefault handler: ^(UIAlertAction *action){
        if([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter]){
            //tweet
        } else {
            //Do this
        }
        
    }];
    
      [actionController addAction: tweetAction];
    
    [actionController addAction: cancelAction];
    
    
    [self presentViewController:actionController animated:YES completion:nil];
}

-(void) configureTweetTextView {
    self.tweetTextView.layer.backgroundColor = [UIColor colorWithRed: 1.0 green: 1.0 blue:0.9 alpha: 1.0].CGColor;
    self.tweetTextView.layer.cornerRadius = 10.0;
    self.tweetTextView.layer.borderColor = [UIColor colorWithWhite: 0 alpha:0.5].CGColor;
    self.tweetTextView.layer.borderWidth = 2.0;
}

@end
