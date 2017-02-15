//
//  DetailViewController.swift
//  Offline blog reader
//
//  Created by mohamed hisham on 2/14/17.
//  Copyright © 2017 hisham. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let blogWeb = self.webView {
                blogWeb.loadHTMLString(detail.value(forKey: "content") as! String    , baseURL: nil)
            }}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    
}

