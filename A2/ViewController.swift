//
//  ViewController.swift
//  A2
//
//  Created by Kori Kolodziejczak on 8/6/14.
//  Copyright (c) 2014 Kori Kolodziejczak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var rosterList = [Person]()
    var studentFirst = ["Kori", "Jackie", "Mike", "John"]
    var studentLast = ["Kolo", "Chan", "Myers", "Paul"]
    
  func initializeRoster (nameFirst: [String], nameLast: [String]) -> [Person] {
    var roster = [Person]()
    
    for var i = 0; i < nameFirst.count; i++ {
      roster.append(Person(firstName: (studentFirst[i]), lastName: (studentLast[i])))
    }
    return(roster)
  }
  
    
  rosterList = initializeRoster(studentFirst, studentLast)
    
    for var i = 0; i < rosterList.count; i++ {
      println(rosterList[i].fullName())
    }
  }
    
  @IBAction func didClick(sender: UIButton) {
  }
  // Do any additional setup after loading the view, typically from a nib.

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}
