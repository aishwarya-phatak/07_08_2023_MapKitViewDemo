//
//  ViewController.swift
//  07_08_2023_MapKitViewDemo
//
//  Created by Vishal Jagtap on 01/11/23.
//

import UIKit
import MapKit

class ViewController: UIViewController{

    @IBOutlet weak var mapView: MKMapView!
    var bitCodePin : MKPlacemark?
    var pointAnnotation : MKPointAnnotation?
    var bitcodeCoordinate : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 18.509, longitude: 73.8326)
    var shaniwarWadaCoordinate : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 18.520, longitude: 73.855)
    var coordinateRegion : MKCoordinateRegion?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setPinUisngMapPinClass()
        //setPointAnnotation(location: shaniwarWadaCoordinate)
//        setPinUisngPlacemark(location: bitcodeCoordinate)
    }
    
    func setPinUisngPlacemark(location : CLLocationCoordinate2D){
        bitCodePin = MKPlacemark(coordinate: location)
        
        coordinateRegion = MKCoordinateRegion(
            center: bitCodePin!.coordinate,
            latitudinalMeters: 800,
            longitudinalMeters: 800)
        mapView.setRegion(coordinateRegion!, animated: true)
        mapView.addAnnotation(bitCodePin!)
    }
    
    func setPointAnnotation(location : CLLocationCoordinate2D){
        pointAnnotation = MKPointAnnotation()
        pointAnnotation?.coordinate = location
        pointAnnotation?.title = "ShaniwarWada"
        
        coordinateRegion = MKCoordinateRegion(
            center: pointAnnotation!.coordinate,
            latitudinalMeters: 800,
            longitudinalMeters: 800)
        mapView.setRegion(coordinateRegion!, animated: true)
        mapView.addAnnotation(pointAnnotation!)
    }

    func setPinUisngMapPinClass(){
        let sinhgadCoordinate = CLLocationCoordinate2D(
            latitude: 18.366,
            longitude: 73.75)
        let newPin = MapPin(
            coordinate: sinhgadCoordinate,
            title: "Sinhgad Fort",
            locationName: "Sinhgad")
        
        let coordinateRegion = MKCoordinateRegion(
            center: newPin.coordinate,
            latitudinalMeters: 800,
            longitudinalMeters: 800)
        
        mapView.setRegion(coordinateRegion, animated: true)
        mapView.addAnnotation(newPin)
    }
}
