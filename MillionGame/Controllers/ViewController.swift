//
//  ViewController.swift
//  MillionGame
//
//  Created by Igor Polousov on 28.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answerButton1: UIButton!
    @IBOutlet var answerButton2: UIButton!
    @IBOutlet var answerButton3: UIButton!
    @IBOutlet var answerButton4: UIButton!
    @IBOutlet var halfButton: UIButton!
    @IBOutlet var helpButton: UIButton!
    
    @IBAction func heplButton(_ sender: UIButton) {
    }
    @IBAction func halfButton(_ sender: UIButton) {
    }
    
    var correctAnswer = 0
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askQuestion()
        
        questionLabel.applyDesign()
        
        answerButton1.applyDesign()
        answerButton2.applyDesign()
        answerButton3.applyDesign()
        answerButton4.applyDesign()
        
        
        halfButton.applyDesign()
        helpButton.applyDesign()
      
    }


    func askQuestion() {
        questionLabel.text = questions[questionNumber].question
        
        let answers = questions[questionNumber].answers
        answerButton1.titleLabel?.text = answers[0]
        answerButton2.titleLabel?.text = answers[1]
        answerButton3.titleLabel?.text = answers[2]
        answerButton4.titleLabel?.text = answers[3]
        
        correctAnswer = questions[questionNumber].correctAnswer
       
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        var title = ""
        if sender.tag == correctAnswer {
            title = "Это правильный ответ"
            questionNumber += 1
            askQuestion()
        } else {
            title = "Ошибка"
            endGame()
        }
        
        alertContorller(title)
    }
    
    func alertContorller(_ answerType: String) {
        let ac = UIAlertController(title: answerType, message: nil, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Ok", style: .cancel))
        present(ac, animated: true)
    }
    
    func endGame() {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "StartController") as? ViewController {
            if let window = self.view.window {
                window.rootViewController = vc
            }
        }
    }
}


