//
//  ViewController.swift
//  maskview
//
//  Created by Soul Master on 2019/7/12.
//  Copyright © 2019 Soul Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageV1: UIImageView!
    
    @IBOutlet weak var imageV2: UIImageView!
    
    @IBOutlet weak var maskV: UIView!
    
    @IBOutlet weak var line: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageV2.mask = maskV
    }
    
    @IBAction func pan(_ pan: UIPanGestureRecognizer) {
        let point = pan.location(in: view)
        var oldFrame = maskV.frame;
        oldFrame.origin.x = point.x
        oldFrame.size.width = view.frame.width - point.x
        var lineFrame = line.frame;
        lineFrame.origin.x = point.x
        UIView.animate(withDuration: 0.05, delay: 0, options: .curveEaseOut, animations: {
            self.maskV.frame = oldFrame
            self.line.frame = lineFrame
        })
        
    }
}

