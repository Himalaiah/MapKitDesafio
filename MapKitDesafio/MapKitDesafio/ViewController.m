//
//  ViewController.m
//  MapKitDesafio
//
//  Created by André Helaehil on 26/02/15.
//  Copyright (c) 2015 André Helaehil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize locationManager, mapa;

- (void)viewDidLoad {
    [super viewDidLoad];
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDelegate:self];
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    [locationManager startUpdatingLocation];
    mapa.mapType = MKMapTypeSatellite;
    [mapa setScrollEnabled:YES];
    [mapa setZoomEnabled:YES];
    [mapa setShowsUserLocation:YES];
    [mapa setRotateEnabled:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocationCoordinate2D loc = [[locations lastObject] coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [mapa setRegion:region animated:YES];
        [locationManager stopUpdatingLocation];
        NSLog(@"%@", [locations lastObject]);
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    //Tratar o erro
}

- (IBAction)atualizar:(id)sender {
    [locationManager startUpdatingLocation];
}
@end
