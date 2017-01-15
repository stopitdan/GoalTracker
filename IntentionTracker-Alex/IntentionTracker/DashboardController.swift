//
//  DashboardController.swift
//  IntentionTracker
//
//  Created by Alex Villacres on 1/12/17.
//  Copyright © 2017 Stop It. All rights reserved.
//

import UIKit
import Firebase

class DashboardController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var goals = [Goal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchGoal()
        print(goals)
        // Do any additional setup after loading the view.
    }
    
    func fetchGoal() {
        if FIRAuth.auth()?.currentUser != nil {
            let uid = FIRAuth.auth()?.currentUser?.uid
            FIRDatabase.database().reference(fromURL: "https://intentiontracker-cfbda.firebaseio.com").child("users").child(uid!).child("goals").observe(.childAdded, with: { (snapshot) in
                
                if let dictionary = snapshot.value as? [String: AnyObject] {
                    let goal = Goal()
                    goal.name = dictionary["name"] as! String?
                    goal.goalDescription = dictionary["description"] as! String?
                    self.goals.append(goal)
                    
//                    print(goal.name!, goal.goalDescription!)
//                    goal.setValuesForKeys(dictionary)
//                    print(goal.name!)
                }
                
//                print("User found")
                
            }
                , withCancel: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath)
        let goal = goals[indexPath.row]
        cell.textLabel?.text = goal.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }

}
