//
//  VC3.swift
//  NavigationDemo
//
//  Created by mac on 03/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import UIKit

class VC3: UIViewController {
    
    var messagefromVC2: String?
    
    @IBOutlet weak var lbl_showmessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_showmessage.text = messagefromVC2
        
        // Do any additional setup after loading the view.
    }

}
