//
//  MoreViewController.swift
//  LiquidCall
//
//  Created by Takemi Watanuki on 2015/04/03.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {

    
    @IBOutlet var webView: UIWebView?
    
    override func viewDidLoad() {
        
        var url: NSURL = NSURL(string: "https://docs.google.com/forms/d/1j2N_Pfo1z7UzOWVOZ-RcGqIPemeoT8SlGuxUaCaEBbI/viewform?usp=send_form")!
        var urlRequest: NSURLRequest = NSURLRequest(URL: url)
        webView!.loadRequest(urlRequest)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
