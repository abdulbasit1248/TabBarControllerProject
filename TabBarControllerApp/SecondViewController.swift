//
//  SecondViewController.swift
//  TabBarControllerApp
//
//  Created by Abdul Basit on 11/10/2018.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var one = "HelloBasitmangat"
    var two = "Hello Basit mangat"

    @IBOutlet weak var LabelB: UILabel!
    @IBOutlet weak var LabelA: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        LabelA.text = one
        LabelA.preferredMaxLayoutWidth = 150
        
        LabelB.text = two
        LabelB.preferredMaxLayoutWidth = 150
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
