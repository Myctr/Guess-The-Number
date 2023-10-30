//
//  ViewController.swift
//  GuessTheNumber
//
//  Created by Muhammed Yasin Çotur on 30.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startUIButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        startUIButton.layer.cornerRadius = 25
        navigationItem.backButtonTitle = "Guess The Number"
    }

    @IBAction func startButtonTouchUpInside(_ sender: Any) {
    }
    
}

