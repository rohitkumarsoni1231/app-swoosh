//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by MacBook on 25/10/2021.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
        
    @IBOutlet weak var nextBtn: BorderButton!

    @IBOutlet weak var mens: BorderButton!
    
    @IBOutlet weak var coed: BorderButton!
    
    @IBOutlet weak var womens: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
            performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMenstapped(_ sender: Any) {
      selectLeague(leagueType: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
       selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
     
}
