//
//  ViewController.swift
//  Project2
//
//  Created by Ünal Öztürk on 19.02.2019.
//  Copyright © 2019 Ünal Öztürk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
   
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        
        askQuestion()
        
        let defaults = UserDefaults.standard
        defaults.set(0, forKey: "HighScore")
        
    }
    
    func askQuestion(action : UIAlertAction! = nil) {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "Score: \(score)- Question: \(countries[correctAnswer].uppercased())"
        
    }
    
    func resetGame(action: UIAlertAction! = nil) {
        checkHighestScore(score)
        counter = 0
        score = 0
        askQuestion()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
            var title: String
            if sender.tag == correctAnswer {
                title = "Correct"
                score += 1
            } else {
                title = "Wrong, that is the flag of \(countries[sender.tag].uppercased())"
                score -= 1
            }
        
            counter += 1
            if counter == 10 {
                
                let acscore = UIAlertController(title: title, message: "Your answered \(counter) questions.Your score is \(score)", preferredStyle: .alert)
                present(acscore,animated: true)
                acscore.addAction(UIAlertAction(title: "Continue", style: .default, handler: resetGame))
                
            } else {
                let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
                present(ac,animated: true)
            }
        
    }
    
    func checkHighestScore(_ userScore: Int) {
        let defaults = UserDefaults.standard
        let score = defaults.integer(forKey: "HighScore")
        if userScore > score {
            defaults.set(userScore, forKey: "HighScore")
            
            let bc = UIAlertController(title: "Best score", message: "Your best score is \(userScore)", preferredStyle: .alert)
            bc.addAction(UIAlertAction(title: "Continue", style: .default))
            present(bc, animated: true)
        } else {
            
        }
    }
}

