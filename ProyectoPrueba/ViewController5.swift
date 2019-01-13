//
//  ViewController5.swift
//  ProyectoPrueba
//
//  Created by Julian Hoyos Martinez on 27/11/2018.
//  Copyright © 2018 Julian Hoyos Martinez. All rights reserved.
//

import UIKit
import WebKit

class ViewController5: UIViewController, UIWebViewDelegate, WKUIDelegate{

    @IBOutlet weak var accesoWeb: WKWebView!
    var varWeb = ""
 
    @IBOutlet weak var nombreWeb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       let urlString = varWeb
        let request = URLRequest(url: URL(string: urlString)!)
        self.accesoWeb.load(request)
 
       
        // Do any additional setup after loading the view.
    }
    
    func cargaPagina(){
       
        let urlString = varWeb
        let request = URLRequest(url: URL(string: urlString)!)
        self.accesoWeb.load(request)
        /*
        let url = NSURL (string:varWeb)
        let request = NSURLRequest (url: url! as URL)
        accesoWeb.load(request as URLRequest)
 
 */
    }

    /*
     // @IBOutlet weak var accesoWeb: WKWebView!
     
     
     var webView: WKWebView!
     
     var varWeb = ""
     
     @IBOutlet weak var nombreWeb: UILabel!
     
     override func viewDidLoad() {
     super.viewDidLoad()
     nombreWeb.text = varWeb
     cargaPagina()
     // Do any additional setup after loading the view.
     }
     override func loadView() {
     let webConfiguration = WKWebViewConfiguration()
     webView = WKWebView(frame: .zero, configuration: webConfiguration)
     view = webView
     }
     
     func cargaPagina(){
     let myUrl = URL (string:varWeb)
     let request = URLRequest (url: myUrl!)
     webView.load(request)
     }
 */
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
