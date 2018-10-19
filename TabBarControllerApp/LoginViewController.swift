//
//  ViewController.swift
//  TabBarControllerApp
//
//  Created by Abdul Basit on 10/10/2018.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func LoginTapped(_ sender: UIButton) {
      
        

        print ("I am clicked")
       // showToast(controller: self, message : "This is a test", seconds: 2.0)

        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        
        mainTabController.selectedViewController = mainTabController.viewControllers?[0]
        present(mainTabController, animated: true, completion: nil )
 
 }
    
    func showToast(controller: UIViewController, message : String, seconds: Double) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = UIColor.black
        alert.view.alpha = 0.6
        alert.view.layer.cornerRadius = 15
        
        controller.present(alert, animated: true)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
            alert.dismiss(animated: true)
        }
    }
    
}

