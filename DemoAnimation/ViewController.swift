//
//  ViewController.swift
//  DemoAnimation
//
//  Created by cis on 07/06/19.
//  Copyright © 2019 cis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var btnToBounce: UIButton!
  
  override func viewDidLoad() {
    print("Hello")
    super.viewDidLoad()
  }
  
  @IBAction func bounceBtnAction(_ sender: Any) {
    let bounds = btnToBounce.bounds
    UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
      self.btnToBounce.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.width+10, height: bounds.height)
    }) { (res) in
      let objVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
      self.navigationController?.pushViewController(objVC!, animated: true)
    }
  }
}

