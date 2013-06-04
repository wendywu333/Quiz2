//
//  ViewController.m
//  Quiz2
//
//  Created by Wenzhe on 6/4/13.
//  Copyright (c) 2013 com.wenzhewu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        // create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // add questions and answers to the arrays
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermount?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is coqnac made"];
        [answers addObject:@"Grape"];
    }
    
    // return the address of the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    // step to next question
    currentQestionIndex++;
    
    // am I past the last question?
    if (currentQestionIndex == [questions count]) {
        currentQestionIndex = 0;
    }
    
    // get the string at that index
    NSString *question = [questions objectAtIndex:currentQestionIndex];
    
    // log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // display the question in the question field
    [questionField setText:question];
    
    // clear the answer field
    [answerField setText:@"???"];
}

- (IBAction)showAnswer:(id)sender
{
    // what is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQestionIndex];
    
    //dispay the answer
    [answerField setText:answer];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
