//
//  ViewController.swift
//  GettingCurrentDateAndTime
//
//  Created by Vladimir Saprykin on 21.06.16.
//  Copyright © 2016 Vladimir Saprykin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dateAndTimeLabel: UILabel!
    
    @IBOutlet weak var currentDateAndTimeLabel: UILabel!
    
    let date = NSDate()
    
    @IBOutlet weak var refreshButton: UIButton!
    @IBAction func refreshNSDateButton(sender: AnyObject) {
        //currentDateAndTimeLabel.text = String(date)
    }
    
    func timeNowString() -> NSString {
        
        
        let outputFormat = NSDateFormatter()
        outputFormat.locale = NSLocale(localeIdentifier:"en_US")
        outputFormat.dateFormat = "HH:mm:ss"
        let timeString = outputFormat.stringFromDate(date)
        return timeString;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

         currentDateAndTimeLabel.text = timeNowString() as String
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

