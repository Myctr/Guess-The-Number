//
//  ResultVC.swift
//  GuessTheNumber
//
//  Created by Muhammed Yasin Çotur on 30.10.2023.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var resultUILabel: UILabel!
    @IBOutlet weak var smileyUIImageView: UIImageView!
    @IBOutlet weak var restartUIButton: UIButton!
    var isWin : Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restartUIButton.layer.cornerRadius = 25
        smileyUIImageView.image = nil
        resultUILabel.text = nil
    }
    override func viewWillAppear(_ animated: Bool) {
        if let isWin = isWin {
            if isWin {
                smileyUIImageView.image = UIImage(systemName: "checkmark.circle")
                resultUILabel.text = "Success"
            }else {
                smileyUIImageView.image = UIImage(systemName: "x.circle")
                resultUILabel.text = "Fail"
            }
        }
    }
    
    @IBAction func restartTouchUpInside(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    


}
