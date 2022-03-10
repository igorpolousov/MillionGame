//
//  ViewController.swift
//  MillionGame
//
//  Created by Igor Polousov on 28.02.2022.
//

import UIKit

class GameController: UIViewController {

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


    func askQuestion(action: UIAlertAction! = nil) {
        let answers = questions[questionNumber].answers
        questionLabel.text = questions[questionNumber].question
        
        answerButton1.titleLabel?.text = answers[0]
        answerButton2.titleLabel?.text = answers[1]
        answerButton3.titleLabel?.text = answers[2]
        answerButton4.titleLabel?.text = answers[3]
        
        correctAnswer = questions[questionNumber].correctAnswer
       
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        var title = ""
        var message = ""
        
        if sender.tag == correctAnswer {
            questionNumber += 1
            title = "Это правильный ответ"
            message = "Правильное количество ответов \(questionNumber)"
            
        } else {
            title = "Ошибка"
            message = "Игра окончена, попробуйте еще раз"
        }
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if sender.tag == correctAnswer {
            ac.addAction(UIAlertAction(title: "Okay", style: .default, handler: askQuestion))
        } else {
            ac.addAction(UIAlertAction(title: "Okay", style: .default, handler: endGame))
        }
        present(ac, animated: true)
        
    }
    
    func endGame(action: UIAlertAction) {
         if let vc = storyboard?.instantiateViewController(withIdentifier: "StartController") as? StartScreenController {
             if let window = self.view.window {
                 window.rootViewController = vc
             }
        }
    }
}


