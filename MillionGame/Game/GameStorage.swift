//
//  GameStorage.swift
//  MillionGame
//
//  Created by Igor Polousov on 10.03.2022.
//

import Foundation


class GameStorage {
    let decoder = JSONDecoder()
    let encoder = JSONEncoder()
    let key = "gameResult"
    let defaults = UserDefaults.standard
    
    func saveData(records: [Record]) {
        do {
            let data = try encoder.encode(records)
            defaults.setValue(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func loadData() -> [Record] {
        guard let data = defaults.object(forKey: key) else { return [] }
        do {
            return try decoder.decode([Record].self, from: data as! Data)
        } catch {
            print(error)
            return []
        }
    }
}
