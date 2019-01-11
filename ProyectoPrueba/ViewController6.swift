//
//  ViewController6.swift
//  ProyectoPrueba
//
//  Created by Julian Hoyos Martinez on 30/11/2018.
//  Copyright © 2018 Julian Hoyos Martinez. All rights reserved.
//

import UIKit
import GoogleMaps

//AIzaSyCKxo6vdcA7v0TSBqAtoRZh626_3CDCdm8

class ViewController6: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let camera = GMSCameraPosition.camera(withLatitude: 40.4893538, longitude: -3.6827461, zoom: 5.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        
    //comentario prueba
        
        
    // Creates a marker in the center of the map.
            //CONCESIONARIOS AUDI
    let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: 40.4893538, longitude: -3.6827461)
               marker.title = "Madrid"
            marker.position = CLLocationCoordinate2D(latitude: 43.3274882, longitude: -8.3667856)
            marker.title = "A coruña"
    marker.snippet = "España"
    marker.map = mapView
    
    let marker1 = GMSMarker()
               marker1.position = CLLocationCoordinate2D(latitude: 41.3818, longitude: 2.1685)
               marker1.title = "Barcelona"
            marker.position = CLLocationCoordinate2D(latitude: 40.49025, longitude: -3.8679887)
            marker1.title = "Madrid"
    marker1.snippet = "España"
    marker1.map = mapView

           let marker2 = GMSMarker()
           marker2.position = CLLocationCoordinate2D(latitude: 41.6369923, longitude: -0.8619203)
          marker2.title = "Zaragoza"
            marker2.snippet = "España"
            marker2.map = mapView
    
            let marker3 = GMSMarker()
          marker3.position = CLLocationCoordinate2D(latitude: 41.3413069, longitude: 2.1375346)
         marker3.title = "Barcelona"
            marker3.snippet = "España"
            marker3.map = mapView
    
         let marker4 = GMSMarker()
                marker4.position = CLLocationCoordinate2D(latitude: 39.4804605, longitude: -0.4542207)
                marker4.title = "Valencia"
                marker4.snippet = "España"
              marker4.map = mapView
    
    let marker5 = GMSMarker()
    marker5.position = CLLocationCoordinate2D(latitude: 36.4954945, longitude: -4.9947403)
    marker5.title = "Marbella"
    marker5.snippet = "España"
    marker5.map = mapView
}



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
