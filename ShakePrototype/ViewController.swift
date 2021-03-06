//
//  ViewController.swift
//  ShakePrototype
//
//  Created by Syed Ali on 2/22/20.
//  Copyright © 2020 Syed Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textView.backgroundColor = .darkGray
        textView.textColor = .white
        randomPersonText.textColor = .red
        randomPersonText.textAlignment = .center
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        self.randomPersons()
    }
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    //List of people
    var personList: [String] = []
    
    @IBAction func addPerson(_ sender: UIButton) {
        textView.text = ""
        var message = ""
        if textView != nil{
            //adding text field items into an array
            if textField.hasText {
                 personList.append(textField.text!)
            }
        }
        
        var i = 0
        while i < personList.count {
            message += "\(i + 1).  \(personList[i])\n"
            i = i + 1
        }
        
        textView.text = message
        textField.text = ""
    }
    
    @IBOutlet weak var randomPersonText: UITextView!
    
    func randomPersons() {
        //var randomPerson = ""
        for _ in 0...personList.count {
            randomPersonText.text  = personList.randomElement()!
        }
        
        //randomPersonText.text = randomPerson
        
    }
    

}
