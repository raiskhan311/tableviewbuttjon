//
//  ViewController.swift
//  TableViewButtons
//
//  Created by APPLE on 01/07/17.
//  Copyright © 2017 rsku. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var objects : NSMutableArray! = NSMutableArray()

    @IBOutlet weak var tbl_tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.objects.add("Iphone")
        self.objects.add("Apple Watch")
        self.objects.add("Mac")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Mark:- Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.objects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl_Title.text = objects.object(at: indexPath.row) as? String
        cell.btn_Log.tag = indexPath.row
        cell.btn_Log.addTarget(self, action: #selector(logAction(sender:)), for: .touchUpInside)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showview", sender: self)
    }
    
    @IBAction func logAction(sender: UIButton)
    {
        let titlestring = self.objects.object(at: sender.tag) as! String
        let firstActivelyItem = "\(titlestring)"
        let activityviewcontroller: UIActivityViewController = UIActivityViewController(activityItems: [firstActivelyItem], applicationActivities: nil)
        self.present(activityviewcontroller, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier) == "showview"
        {
            let nv = segue.destination as! UINavigationController
            let upcoming = nv.topViewController as? NewViewController
            let indexpath = self.tbl_tableview.indexPathForSelectedRow!
            let titlestring = self.objects.object(at: indexpath.row) as? String
            upcoming?.titleString = titlestring
            self.tbl_tableview.deselectRow(at: indexpath, animated: true)
        }
    }
    
    
    
    
    
    

}

