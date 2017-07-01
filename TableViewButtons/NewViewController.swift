//
//  NewViewController.swift
//  TableViewButtons
//
//  Created by APPLE on 01/07/17.
//  Copyright © 2017 rsku. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var lbl_Title: UILabel!
    
    var titleString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lbl_Title.text = self.titleString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_Back(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
