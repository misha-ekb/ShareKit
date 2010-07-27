//
//  RootViewController.m
//  ShareKit
//
//  Created by Nathan Weiner on 6/4/10.
//  Copyright Idea Shower, LLC 2010. All rights reserved.
//

#import "RootViewController.h"
#import "ExampleShareLink.h"
#import "ExampleShareImage.h"
#import "ExampleShareText.h"
#import "ExampleShareFile.h"
#import "SHK.h"

@implementation RootViewController

#pragma mark -
#pragma mark Table view data source


// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return 4;//5;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	switch (indexPath.row) 
	{
		case 0:
			cell.textLabel.text = @"Sharing a Link";
			break;
			
		case 1:
			cell.textLabel.text = @"Sharing an Image";
			break;
			
		case 2:
			cell.textLabel.text = @"Sharing Text";
			break;
			
		case 3:
			cell.textLabel.text = @"Sharing a File";
			break;
			
		//case 4:
		//	cell.textLabel.text = @"Logout of All Services";
		//	break;
	}

    return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	switch (indexPath.row) 
	{
		case 0:
			[self.navigationController pushViewController:[[[ExampleShareLink alloc] initWithNibName:nil bundle:nil] autorelease] animated:YES];
			break;
			
		case 1:
			
			[self.navigationController pushViewController:[[[ExampleShareImage alloc] initWithNibName:nil bundle:nil] autorelease] animated:YES];
			break;
			
		case 2:
			[self.navigationController pushViewController:[[[ExampleShareText alloc] initWithNibName:nil bundle:nil] autorelease] animated:YES];
			break;
			
		case 3:
			[self.navigationController pushViewController:[[[ExampleShareFile alloc] initWithNibName:nil bundle:nil] autorelease] animated:YES];
			break;
			
		//case 4:
		//	[SHK logoutOfAll];
		//	break;			
			
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return YES;
}


@end

