//
//  ViewController.swift
//  test1225
//
//  Created by 20161104569 on 2018/12/26.
//  Copyright © 2018 20161104569. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    @IBAction func load(_ sender: Any) {
        wv.reload()
    }
    @IBAction func back(_ sender: Any) {
        wv.goBack()
    }
    
    @IBOutlet weak var wv: WKWebView!
    
    @IBAction func btn(_ sender: Any) {
        if let url = URL(string: urlTF.text!){
            //加载网页
            wv.load(URLRequest(url: url))
        }
    }
    @IBOutlet weak var urlTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //请求路径
        if let url = URL(string: "https://www.baidu.com"){
            wv.load(URLRequest(url: url))
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
   

}

