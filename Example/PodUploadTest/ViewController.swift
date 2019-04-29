//
//  ViewController.swift
//  PodUploadTest
//
//  Created by MyLifIng on 04/29/2019.
//  Copyright (c) 2019 MyLifIng. All rights reserved.
//

import UIKit
import Pods_PodUploadTest_Example

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fantasticView = FantasticView(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

