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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.applyDesign()
        
        answerButton1.applyDesign()
        answerButton2.applyDesign()
        answerButton3.applyDesign()
        answerButton4.applyDesign()
        
        halfButton.applyDesign()
        helpButton.applyDesign()
      
    }


}


