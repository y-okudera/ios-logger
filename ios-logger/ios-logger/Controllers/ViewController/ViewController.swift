//
//  ViewController.swift
//  ios-logger
//
//  Created by OkuderaYuki on 2017/04/04.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Logger.debug(message: "demo1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        Logger.info(message: "demo2")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        Logger.warning(message: "demo3")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Logger.error(message: "demo4")
    }
}

