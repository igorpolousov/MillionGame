//
//  GameSingletone.swift
//  MillionGame
//
//  Created by Igor Polousov on 10.03.2022.
//

import Foundation


final class Game {
    
    let standart = Game()
    private(set) var records = [Record]()
    
    var gameSession: GameSession?
    
    private init() {}
    
    
    func addRecord(_ record: Record) {
        self.records.append(record)
    }
    
    func clearRecords() {
        self.records = []
    }
    
}
