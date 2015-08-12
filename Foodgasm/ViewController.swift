//
//  ViewController.swift
//  Foodgasm
//
//  Created by Pradyumna Shembekar on 7/25/15.
//  Copyright (c) 2015 Pradyumna Shembekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    let vegetables = ["Onion", "Tomatoes", "Green Pepper", "Red Pepper", "Cilantros"]
    let dairyProducts = ["Milk", "Yogurt", "Butter", "Soy Milk"]
    let cheeseVariants = ["Parmesan", "Pepper Jack", "Swiss", "Cheddar", "Cottage Cheese"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch(section) {
        case 0: return vegetables.count
        case 1: return dairyProducts.count
        case 2: return cheeseVariants.count
        default: fatalError("unknown section")
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
       
        switch (indexPath.section) {
        case 0:
            let vegetableItems = vegetables[indexPath.row]
            cell.textLabel?.text = vegetableItems
        case 1:
            let dairyItems = dairyProducts[indexPath.row]
            cell.textLabel?.text = dairyItems
        case 2:
            let cheeseVariantItems = cheeseVariants[indexPath.row]
            cell.textLabel?.text = cheeseVariantItems
        default:
            break
        }
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0: return "Vegetables"
        case 1: return "Dairy Products"
        case 2: return "Cheese"
        default: fatalError("section error")
        }
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .Checkmark {
                cell.accessoryType = .None
            }
            else {
                cell.accessoryType = .Checkmark
            }
        }
    }

}

