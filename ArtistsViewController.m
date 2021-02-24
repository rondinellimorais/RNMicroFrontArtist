//
//  ArtistsViewController.m
//  midwaybanking
//
//  Created by RONDINELE SANTOS DE MORAIS on 24/02/21.
//

#import "ArtistsViewController.h"

@interface ArtistsViewController()

@end

@implementation ArtistsViewController

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  [self.navigationController setNavigationBarHidden:true animated:false];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  //  DEV
  //  NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
  //
  //  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
  //                                                      moduleName:@"RNMicroFrontArtist"
  //                                               initialProperties:nil
  //                                                   launchOptions:nil];
  //
  //  self.view = rootView;
  
  //  PROD
  NSBundle * bundle = [NSBundle bundleForClass:ArtistsViewController.class];

  NSURL *jsCodeLocation = [bundle URLForResource:@"Bundle.bundle/RNMicroFrontArtist" withExtension:@"jsbundle"];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"RNMicroFrontArtist"
                                               initialProperties:nil
                                                   launchOptions:nil];
  
  self.view = rootView;
}

@end
