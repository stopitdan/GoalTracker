//
//  AddGoalController.swift
//  IntentionTracker
//
//  Created by Alex Villacres on 1/12/17.
//  Copyright © 2017 Stop It. All rights reserved.
//

import UIKit
import Firebase

class AddGoalController: UIViewController {

    @IBOutlet weak var goalTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitButtonPressed(_ sender: UIButton) {
        
        if FIRAuth.auth()?.currentUser != nil {
            let uid = FIRAuth.auth()?.currentUser?.uid
            let ref = FIRDatabase.database().reference(fromURL: "https://intentiontracker-cfbda.firebaseio.com").child("users").child(uid!).child("goals")
            let childRef = ref.childByAutoId()
            let nameValue = ["name": goalTextField.text]
            let descriptionValue = ["description": descriptionTextField.text]
            childRef.updateChildValues(nameValue)
            childRef.updateChildValues(descriptionValue)
            print(goalTextField.text!)
            print(descriptionTextField.text!)
        
        }
    }
}
