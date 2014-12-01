//
//  ViewController.m
//  larginView
//
//  Created by Robb Schiller on 11/25/14.
//  Copyright (c) 2014 Robb Schiller. All rights reserved.
//

#import "ViewController.h"

// Class extension
@interface ViewController ()

@property (nonatomic, strong) UITextField *usernameTextField;
@property (nonatomic, strong) UITextField *passwordTextField;
@property (nonatomic, strong) UIButton *loginButton;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self setupViews];
	[self setupContraints];
	
}

- (void)setupViews {

	UIColor *colorWhite = [UIColor whiteColor];
	self.view.backgroundColor = [UIColor grayColor];
	
	// Username
	self.usernameTextField = [[UITextField alloc] init];
	self.usernameTextField.translatesAutoresizingMaskIntoConstraints = NO;
	self.usernameTextField.borderStyle = UITextBorderStyleNone;
	self.usernameTextField.backgroundColor = [UIColor grayColor];
	self.usernameTextField.placeholder = @"Username";
	self.usernameTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Username" attributes:@{NSForegroundColorAttributeName: colorWhite}];
	
	[self.view addSubview:self.usernameTextField];
	
	// Password
	self.passwordTextField = [[UITextField alloc] init];
	self.passwordTextField.translatesAutoresizingMaskIntoConstraints = NO;
	self.passwordTextField.borderStyle = UITextBorderStyleNone;
	self.passwordTextField.backgroundColor = [UIColor grayColor];
	self.passwordTextField.secureTextEntry = YES;
	self.passwordTextField.placeholder = @"Password";
	self.passwordTextField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"Password" attributes:@{NSForegroundColorAttributeName: colorWhite}];
	
	[self.view addSubview:self.passwordTextField];
	
	// Button
	self.loginButton = [[UIButton alloc] init];
	self.loginButton.translatesAutoresizingMaskIntoConstraints = NO;
	[self.loginButton setTitle:@"Login" forState:UIControlStateNormal];
	self.loginButton.backgroundColor = [UIColor grayColor];
	
	[self.view addSubview:self.loginButton];
	
}

- (void)setupContraints {
	
	NSString *visualFormat = @"|-20-[_usernameTextField(==_passwordTextField)]-20-|";
	NSDictionary *views = NSDictionaryOfVariableBindings(_usernameTextField, _passwordTextField, _loginButton);
	NSArray *contraints = [NSLayoutConstraint constraintsWithVisualFormat:visualFormat
																																 options:0
																																 metrics:nil
																																 views:views];
	
	[self.view addConstraints:contraints];

	visualFormat = @"|-20-[_passwordTextField]-20-|";
	contraints = [NSLayoutConstraint constraintsWithVisualFormat:visualFormat
																										options:0
																										metrics:nil
																										views:views];
	
	[self.view addConstraints:contraints];
	
	visualFormat = @"|-80-[_loginButton]-80-|";
	contraints = [NSLayoutConstraint constraintsWithVisualFormat:visualFormat
																										options:0
																										metrics:nil
																										views:views];
	
	[self.view addConstraints:contraints];
	
	visualFormat = @"V:|-100-[_usernameTextField(==44)]-20-[_passwordTextField(==_usernameTextField)]-40-[_loginButton(==44)]";
	contraints = [NSLayoutConstraint constraintsWithVisualFormat:visualFormat
																										options:0
																										metrics:nil
																										views:views];
	
	[self.view addConstraints:contraints];
	
}

@end
