//
//  Questions.swift
//  MillionGame
//
//  Created by Igor Polousov on 28.02.2022.
//

import Foundation

// Структура для массива с вопросами

struct Question {
    var question: String
    var answers: [String]
    var correctAnswer: Int
}

// Массив с вопросами

var questions: [Question] = [
Question(question: "Что лучше всего притягивает магнит?", answers: ["Железо", "Пластмассу", "Дерево", "Плохого человека"], correctAnswer: 0),
Question(question: "Страна происхождения Scotch Whisky", answers: ["Россия", "Ирладндия", "США", "Шотландия"], correctAnswer: 3),
Question(question: "Традиционный способ обращения к судье в судах США", answers: ["Ваше святейшество", "Ваша честь", "Ваше высокопреосвещенство", "Yo dude!"], correctAnswer: 1),
Question(question: "", answers: ["", "", "", ""], correctAnswer: 0)

]
