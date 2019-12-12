//
//  ViewController.swift
//  SimpleWebView
//
//  Created by Tai Wei Tseng on 2019/12/12.
//  Copyright © 2019 man27382210. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://nuxh8.csb.app/")
        let myRequest = URLRequest(url: myURL!)
        webView?.load(myRequest)
    }

    @IBAction func backButtonClick(_ sender: Any) {
        webView?.goBack()
    }
    
    @IBAction func refreshButtonClcik(_ sender: Any) {
        webView?.reload()
    }
    
}

