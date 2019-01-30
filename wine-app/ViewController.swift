//
//  ViewController.swift
//  wine-app
//
//  Created by yuelei on 2019/1/16.
//  Copyright © 2019 yuelei. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate  {
//    @IBOutlet weak var appwebview: UIWebView!
    var appwebview: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        appwebview = WKWebView(frame: .zero, configuration: webConfiguration)
        appwebview.uiDelegate = self
        view = appwebview
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let myURL = URL(string:"http://192.168.1.104:8080/")
        let myRequest = URLRequest(url: myURL!)
       appwebview.load(myRequest)
    }

}

