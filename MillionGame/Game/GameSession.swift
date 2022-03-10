//
//  GameSession.swift
//  MillionGame
//
//  Created by Igor Polousov on 10.03.2022.
//

import Foundation

protocol GameSessionDelegate: AnyObject {
    var questionsQuantity: Int { get set }
    func currentScore(_ score: Int)
}

final class GameSession: GameSessionDelegate {
    
    var questionsQuantity: Int
    var score: Int = 0
    
    func currentScore(_ score: Int) {
        self.score = score
    }
    
    init(questionQuantity: Int) {
        self.questionsQuantity = questionQuantity
    }
    
}
