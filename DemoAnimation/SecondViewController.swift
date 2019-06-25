//
//  SecondViewController.swift
//  DemoAnimation
//
//  Created by cis on 07/06/19.
//  Copyright © 2019 cis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  @IBOutlet var tblView: UITableView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    animateTable()
    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
  }
  
  func animateTable() {
    tblView.reloadData()
    
    let cells = tblView.visibleCells
    let tableHeight = tblView.bounds.size.height
    
    for i in cells {
      let cell: UITableViewCell = i as UITableViewCell
      cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
    }
    
    var index = 0
    
    for a in cells {
      let cell: UITableViewCell = a as UITableViewCell
      UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, animations: {
        cell.transform = CGAffineTransform(translationX: 0, y: 0)
      }, completion: nil)
      index += 1
    }
  }
  
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
    cell.textLabel?.text = "Cell \(indexPath.row)"
    return cell
  }
  
}
