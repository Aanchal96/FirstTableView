//
//  ViewController.swift
//  FirstTableView
//
//  Created by Appinventiv on 21/02/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let data = ["B" : ["Bear", "Black Swan", "Buffalo"],
                "C" : ["Camel", "Cockatoo"],
                "D" : ["Dog", "Donkey"],
                "E" : ["Emu"],
                "G" : ["Giraffe", "Greater Rhea"],
                "H" : ["Hippopotamus", "Horse"],
                "K" : ["Koala"],
                "L" : ["Lion", "Llama"],
                "M" : ["Manatus", "Meerkat"],
                "P" : ["Panda", "Peacock", "Pig", "Platypus", "Polar Bear"],
                "R" : ["Rhinoceros"],
                "S" : ["Seagull"],
                "T" : ["Tasmania Devil"],
                "W" : ["Whale", "Whale Shark", "Wombat"]]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func sectionHeading() -> Int{
        let sectionHeader = Array(data.keys).sorted()
        return sectionHeader.count
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

//MARK: --> Methods of UITableView

extension ViewController{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionHeading()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rows = Array(data.values)
        return rows[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
         let textValues = Array(data.values)
         //cell.textLabel?.text = textValues[[indexPath]]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alertController = UIAlertController(title: "Message", message: "You have selected section \((indexPath.section + 1)) row \((indexPath.row)+1).", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alertController.addAction(alertAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let title = Array(data.keys).sorted()
        return title[section]
    }
}

