//
//  InternetDetailViewController.swift
//  BrandonReich_CSP
//
//  Created by Reich, Brandon on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
import WebKit

public class InternetDetailViewController : UIViewController
{
    //Mark: GUI Controls
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var webViewer: WKWebView!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }
    
    private func setup()-> Void
    {
        
    }
}
