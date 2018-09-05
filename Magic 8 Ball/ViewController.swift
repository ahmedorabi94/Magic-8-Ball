//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ahmed Orabi on 9/5/18.
//  Copyright © 2018 Ahmed Orabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballAray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func askMeButton(_ sender: UIButton) {
        updateImages()
        
    }
    
    
    func updateImages() {
        randomNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballAray[randomNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImages()
    }


}

