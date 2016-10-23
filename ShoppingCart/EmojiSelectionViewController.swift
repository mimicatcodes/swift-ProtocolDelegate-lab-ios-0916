//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    var emojiDelegate: EmojiCreation?
    
//    protocol EmojiCreation {
//        func create(emojiGroup:(String, String))
//    }
    
    @IBOutlet weak var textField1: UITextField!
  
    @IBOutlet weak var textField2: UITextField!
    
    @IBAction func saveButtonTapped(_ sender: AnyObject) {
        guard let text1 = textField1.text, text1 != "" else {
            return
        }
        
        guard let text2 = textField2.text, text2 != "" else {
            return
        }
        
        emojiDelegate?.create(emojiGroup: (text1, text2))
        
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
}

/*
 

 
 Below that delegate method call (still in the implementation of your button tapped method), type this line of code as we will want to dismiss our View Controller.
 dismiss(animated: true, completion: nil)
 
 If we were to now run our code, would this all work? Not yet, do you know why? We haven't yet created the connection between the two view controllers.
 
 */

