
//
//  ViewController.swift
//  machinetext1(Q1)
//
//  Created by Felix ITs 08 on 06/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit
var outdoorgame = ["cricket","basketball","hoky","football","kho-kho"]
var element = String()
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
       
        if cell?.accessoryType == .checkmark
        {
            cell?.accessoryType = .none
        }
        else
        {
            
        
            cell?.accessoryType = .checkmark
            mylabel.text = cell?.textLabel?.text
            
        
        }
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return outdoorgame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle
            , reuseIdentifier: "cell")
        cell.textLabel?.text = outdoorgame[indexPath.row]
        cell.accessoryType = .none
        return cell
    }
    
    @IBOutlet var mylabel: UILabel!
    
    @IBAction func press(_ sender: UIButton) {
        
     
        
        showalert(title: mylabel.text!, message: mylabel.text! )
        
    }
    
    func showalert(title : String,message: String)
    {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okaction = UIAlertAction(title: "ok", style: .default) { (okaction) in
            print("ok is pressed")}
        
        alert.addAction(okaction);
       
        present(alert, animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

