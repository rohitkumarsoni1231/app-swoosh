//  ViewController.swift
//  app-swoosh
//
//  Created by MacBook on 23/10/2021.


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        swoosh.frame = CGRect(x: view.frame.size .width / 2 - view.frame.size .width / 2 , y: 50, width: swoosh.frame.size.width , height: swoosh.frame.size.height)
        
        bgImg.frame = view.frame
        
    }

    
}
