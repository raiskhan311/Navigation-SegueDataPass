//
//  ViewController.swift
//  NavigationDemo
//
//  Created by mac on 03/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txt_message: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btn_next(_ sender: Any) {

    }

    //Mark:-  Transition b/w viewcontroller and pass data using segue
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            performSegue(withIdentifier: "VC2", sender: self)
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VC2"{
            let vc = segue.destination as! UINavigationController
            let y = vc.topViewController as! VC2
            y.message = self.txt_message.text!
        }
    }
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func unseguAction(sff:UIStoryboardSegue){
        txt_message.text = "WelcomeBack"
    }
}

