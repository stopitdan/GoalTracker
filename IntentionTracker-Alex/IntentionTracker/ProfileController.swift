//
//  TabBarController.swift
//  IntentionTracker
//
//  Created by Dan Wiegand on 1/9/17.
//  Copyright © 2017 Stop It. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController
import TransitionAnimation
import TransitionTreasury

class ProfileController: UIViewController, NavgationTransitionable{

    weak var modalDelegate: ModalViewControllerDelegate?
    var tr_pushTransition: TRNavgationTransitionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
// STRENGTHS

//curious
//determined
//authentic
//entertaining
//intelligent

// WEAKNESSES

//organized
//willpower
//disciplined
//communicative
//motivated
