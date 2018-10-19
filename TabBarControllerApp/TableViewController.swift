//
//  TableViewController.swift
//  TabBarControllerApp
//
//  Created by Abdul Basit on 13/10/2018.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit

import UIKit
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // These strings will be the data for the table view cells
    var animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    
    
    
    
    
    
    
    
    // These are the colors of the square views in our table view cells.
    // In a real project you might use UIImages.
    var colors = [UIColor.blue, UIColor.yellow, UIColor.magenta, UIColor.red, UIColor.brown]
    
    // Don't forget to enter this in IB also
    let cellReuseIdentifier = "cell"
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    @IBAction func InsertCellToTable(_ sender: UIButton) {
        
        insertNewCell()
    }
    func insertNewCell() -> Void{
        animals.append("Duck")
        colors.append(UIColor.purple)
        self.tableView.beginUpdates()
        self.tableView.insertRows(at: [IndexPath.init(row: self.animals.count-1, section: 0)], with: .automatic)
        self.tableView.endUpdates()
        print ("abc")
        
        
    }
    
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
  
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyCustomCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as!MyCustomCell
        
        cell.myView.backgroundColor = self.colors[indexPath.row]
        cell.myCellLabel.text = self.animals[indexPath.row]
        
        print("1")
        print(self.animals[indexPath.row])
        
        
        return cell
    }
    /*
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     print ("1")
     return videos.count
     
     }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     print ("2")
     let video = videos[indexPath.row]
     let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as! videoCell
     
     cell.setVideo(video : video)
     return cell
     }
 */

    
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        let alert = UIAlertController(
            title: "Which Action!", message: "You want to edit some?", preferredStyle: .actionSheet
        )
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (UIAlertAction) in
            print("Tapped")
        }))
        alert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: { (UIAlertAction) in
            print("canceled")
        }))
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            // remove the item from the data model
            animals.remove(at: indexPath.row)
            
            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            // Not used in our example, but if you were adding a new row, this is where you would do it.
        }
    }
    
    
    
  

   
}
