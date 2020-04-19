//
//  ViewSiteViewController.swift
//  week82Tables
//
//  Created by Sherwin on 2020-03-04.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit
import WebKit

class ViewSiteViewController: UIViewController ,WKNavigationDelegate{
    
    @IBOutlet var webView : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            let mainDelegate = UIApplication.shared.delegate as! AppDelegate
        let urlAddress = URL(string : mainDelegate.selectedString)
        let url = URLRequest(url: urlAddress)
        webView.load(url)
        webView.navigationDelegate = self
        
        // Do any additional setup after loading the view.
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
