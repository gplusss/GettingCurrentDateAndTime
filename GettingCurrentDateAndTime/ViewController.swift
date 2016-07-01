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
    let calendar = NSCalendar.currentCalendar()
    

    
    @IBOutlet weak var refreshButton: UIButton!
    @IBAction func refreshNSDateButton(sender: AnyObject) {
        updateNSDate()
        view.reloadInputViews()
    }
    
    
    func updateNSDate() {
        //currentDateAndTimeLabel.text = String(date)
        
        currentDateAndTimeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .LongStyle)

        print((currentDateAndTimeLabel.text!))
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        currentDateAndTimeLabel.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .MediumStyle, timeStyle: .LongStyle)

        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

