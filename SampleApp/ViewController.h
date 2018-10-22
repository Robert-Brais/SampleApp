//
//  ViewController.h
//  SampleApp
//
//  Created by Robert Brais on 10/22/18.
//  Copyright © 2018 Robert Brais. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *nameField;
@property (weak) IBOutlet NSTextField *helloLabel;
- (IBAction)sayButtonClicked:(id)sender;

@end

