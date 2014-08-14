//
//  ViewController.swift
//  A2
//
//  Created by Kori Kolodziejczak on 8/6/14.
//  Copyright (c) 2014 Kori Kolodziejczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
   var rosterList = [Person]()
  
  @IBOutlet weak var tableView: UITableView!
  func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
    return self.rosterList.count
  }
  
  func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
    
    let person = self.rosterList[indexPath.row]
    
    cell.textLabel.text = person.fullName()
  
    return cell
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
   
    var studentFirst = ["Kori", "Brian", "Tuan", "Nathan", "Nate", "Jeff", "Christie"]
    var studentLast = ["Kolodziejczak", "Mendez", "Vu", "Ma", "Birkholz", "Chavez", "Ferderer"]
    
    
    
    rosterList = self.initializeRoster(studentFirst, nameLast: studentLast)
    
    for var i = 0; i < rosterList.count; i++ {
      println(rosterList[i].fullName())
    }
  }
  
  func initializeRoster (nameFirst: [String], nameLast: [String]) -> [Person] {
    var roster = [Person]()
    
    for var i = 0; i < nameFirst.count; i++ {
      roster.append(Person(firstName: nameFirst[i], lastName: nameLast[i]))
    }
    return(roster)
  }

   // Do any additional setup after loading the view, typically from a nib.

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
    if segue.identifier == "showDetail" {
      let destination = segue.destinationViewController as DetailViewController
      destination.infoDump = rosterList[tableView!.indexPathForSelectedRow().row]
    }
  }
}
