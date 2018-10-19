//
//  FirstViewController.swift
//  TabBarControllerApp
//
//  Created by Abdul Basit on 10/10/2018.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import Foundation
import UIKit

class FirstViewController : UIViewController
{
   
    @IBOutlet weak var fieldA: UITextField!
    @IBOutlet weak var FieldB: UITextField!
    
    @IBOutlet weak var SubmitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        SubmitButton.layer.borderColor=UIColor.red.cgColor
        SubmitButton.layer.borderWidth = 5
        
        self.hideKeyboardWhenTappedAround()
    }
    @IBAction func Logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "btnSubmitSegue")
        {
            let svc = segue.destination as! SecondViewController
            if ((fieldA.text?.characters.count)! > 0 && (FieldB.text?.characters.count)! > 0 ) {
                svc.one = fieldA.text!
                     svc.two = FieldB.text!
            }
            else
            {
                
                
                let alertController = UIAlertController(title: "Empty Fields", message:
                    "Please Fill the fields!", preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
            }
                //svc.one = fieldA.text!
            
           //     svc.two = FieldB.text!
        }
    }
 
    
}
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
