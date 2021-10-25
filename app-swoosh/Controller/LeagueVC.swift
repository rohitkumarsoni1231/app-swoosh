//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by MacBook on 25/10/2021.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
     performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
}
