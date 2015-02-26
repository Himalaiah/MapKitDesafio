//
//  ViewController.h
//  MapKitDesafio
//
//  Created by André Helaehil on 26/02/15.
//  Copyright (c) 2015 André Helaehil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
        CLLocationManager *locationManager;
}

@property (retain)CLLocationManager* locationManager;
@property (weak, nonatomic) IBOutlet MKMapView *mapa;
- (IBAction)atualizar:(id)sender;

@end

