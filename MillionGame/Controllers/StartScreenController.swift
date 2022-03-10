//
//  StartScreenViewController.swift
//  MillionGame
//
//  Created by Igor Polousov on 09.03.2022.
//

import UIKit

class StartScreenController: UIViewController {
    
    @IBAction func gameStart(_ sender: Any) {
        startGame()
    }
    
    @IBOutlet var startGameButton: UIButton!
    @IBOutlet var userResultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userResultsLabel.applyDesign()
        startGameButton.applyDesign()
    }
    
    func startGame() {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "GameContorller") as? GameController {
            if let window = self.view.window {
                window.rootViewController = vc
            }
        }
        
    }
}
