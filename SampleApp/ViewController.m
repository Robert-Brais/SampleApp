//
//  ViewController.m
//  SampleApp
//
//  Created by Robert Brais on 10/22/18.
//  Copyright © 2018 Robert Brais. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)sayButtonClicked:(id)sender {
    NSString *name = self.nameField.stringValue;
    if(name.length == 0){
        name = @"World";
    }
    NSString *greeting = [@"Hello " stringByAppendingFormat:@"%@!",name];
    self.helloLabel.stringValue = greeting;
}
@end
