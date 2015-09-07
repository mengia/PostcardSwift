//
//  ViewController.swift
//  PostcardSwift
//
//  Created by Mengistayehu Mamo on 9/6/15.
//  Copyright (c) 2015 Mengistayehu Mamo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel:UILabel!
    @IBOutlet weak var enterEnterName:UITextField!
    @IBOutlet weak var enterEnterMessage:UITextField!
    
    @IBOutlet weak var mailSend: UIButton!
    
    @IBOutlet weak var nameTextLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func sendMailButtonPressed(sender:UIButton){
        // second commit to check the repo 
        nameTextLabel.hidden=false
        nameTextLabel.text=enterEnterName.text
        nameTextLabel.textColor=UIColor.blueColor()
        nameTextLabel.numberOfLines=0
        
        messageLabel.hidden=false
        messageLabel.text=enterEnterMessage.text
        messageLabel.textColor=UIColor.redColor();
        messageLabel.numberOfLines=0
        
        //enterEnterMessage.resignFirstResponder()
        
        if(enterEnterMessage.text==""){
            mailSend.setTitle("Send Message", forState: UIControlState.Normal)
        } else {
           mailSend.setTitle("Mail Sent", forState: UIControlState.Normal)
        }
        
        nameTextLabel.text=""
        enterEnterMessage.text=""
        
        
        
    }

}

