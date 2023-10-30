//
//  GuessVC.swift
//  GuessTheNumber
//
//  Created by Muhammed Yasin Çotur on 30.10.2023.
//

import UIKit

class GuessVC: UIViewController {
    @IBOutlet weak var livesUILabel: UILabel!
    @IBOutlet weak var hintUILabel: UILabel!
    @IBOutlet weak var numberUITextField: UITextField!
    @IBOutlet weak var guessUIButton: UIButton!
    
    var randomNumber : Int?
    var lives : Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessUIButton.layer.cornerRadius = 25
    }
    override func viewWillAppear(_ animated: Bool) {
        randomNumber = Int.random(in: 0...100)
        lives = 5
        hintUILabel.text = " "
        print(randomNumber!)
    }
    
    
    @IBAction func guessTouchUpInside(_ sender: Any) {
        if let textFieldText = numberUITextField.text  {
            if let guessedNumber = Int(textFieldText){
                if guessedNumber > randomNumber! {
                    hintUILabel.text = "Down 👎"
                    lives = lives - 1
                    livesUILabel.text = "\(lives) ❤️"
                    if(lives == 0) {
                        performSegue(withIdentifier: "guessToResultSegue", sender: false)
                    }
                }else if guessedNumber < randomNumber! {
                    hintUILabel.text = "Up 👍"
                    lives = lives - 1
                    if(lives == 0) {
                        performSegue(withIdentifier: "guessToResultSegue", sender: false)
                    }
                    livesUILabel.text = "\(lives) ❤️"
                }else {
                    performSegue(withIdentifier: "guessToResultSegue", sender: true)
                }
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultVC
        if let isWin = sender as? Bool {
            destinationVC.isWin = isWin
        }
    }
}

    
