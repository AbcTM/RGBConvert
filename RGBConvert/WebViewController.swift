//
//  WebViewController.swift
//  RGBConvert
//
//  Created by tm on 2018/7/6.
//  Copyright © 2018年 tm. All rights reserved.
//

import Cocoa
import WebKit

/// 网页版
class WebViewController: NSViewController {

    @IBOutlet weak var webView: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       let url = URL.init(string: "https://www.bejson.com/convert/rgbhex/")!
        let request = URLRequest.init(url: url, cachePolicy: URLRequest.CachePolicy.useProtocolCachePolicy, timeoutInterval: TimeInterval(1000000))
        webView.mainFrame.load(request)
    }
    
}
