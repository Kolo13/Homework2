//
//  DetailViewController.swift
//  A2
//
//  Cr/Users/kori/Documents/F2/iOS_Assignments/Assignment2/A2/A2/DetailViewController.swifteated by Kori Kolodziejczak on 8/13/14.
//  Copyright (c) 2014 Kori Kolodziejczak. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate  {
  
  var infoDump: Person?


  @IBOutlet weak var textFieldFirstName: UITextField!
  @IBOutlet weak var textFieldLastName: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(animated: Bool) {
    textFieldFirstName.text = infoDump!.firstName
    textFieldLastName.text = infoDump!.lastName
    
    
  }
  
  
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
