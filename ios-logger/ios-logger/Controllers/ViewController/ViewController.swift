//
//  ViewController.swift
//  ios-logger
//
//  Created by OkuderaYuki on 2017/04/04.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

struct Sample {
    var name: String? {
        didSet {
            Logger.debug(message: "\(name)")
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Logger.debug(message: "foo\nbar")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var sample = Sample()
        sample.name = "名前"
    }
}

