//
//  QuestionController.swift
//  MathQuestions
//
//  Created by Natalie Hall on 8/18/21.
//

import Foundation

class QuestionController {
    
    let questions = [
        Question(text: "11 + 33 = ?", answers: ["43", "34", "55", "44"], correctAnswers: "44"),
        Question(text: "9 x 7 = ?", answers: ["66", "54", "63", "72"], correctAnswers: "63"),
        Question(text: "18 + 18 = ?", answers: ["46", "38", "36", "40"], correctAnswers: "36"),
        Question(text: "7 x 7 = ?", answers: ["51", "42", "49", "52"], correctAnswers: "49"),
        Question(text: "72 - 44 = ?", answers: ["116", "28", "112", "22"], correctAnswers: "28"),
        Question(text: "6 x 4 = ?", answers: ["24", "26", "18", "28"], correctAnswers: "24"),
        Question(text: "55 + 17 = ?", answers: ["69", "78", "72", "73"], correctAnswers: "72"),
        Question(text: "12 x 5 = ?", answers: ["55", "60", "65", "52", "70"], correctAnswers: "60"),
        Question(text: "23 - 35 = ?", answers: ["-18", "-14", "-11", "-12"], correctAnswers: "-12"),
        Question(text: "10 x 12 = ?", answers: ["102", "122", "140", "120"], correctAnswers: "120"),
        Question(text: "27 - 14 = ?", answers: ["11", "7", "15", "13" ], correctAnswers: "13"),
        Question(text: "3 x 15 = ?", answers: ["35", "30", "45", "40"], correctAnswers: "45"),
        Question(text: "66 + 66 = ?", answers: ["112", "126", "132", "118"], correctAnswers: "132"),
        Question(text: "8 x 8 = ?", answers: ["58", "60", "64", "56"], correctAnswers: "64"),
        Question(text: "14 + 16 = ?", answers: ["28", "42", "38", "30"], correctAnswers: "30")
    ]
    
    var questionNumber = 0
    var scoreTotal = 0
    
    func getAnswer(userAnswer: String) -> Bool {
        if userAnswer == questions[questionNumber].correctAnswers {
            scoreTotal += 1
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return scoreTotal
    }
    
    func currentQuestion() -> String {
        return questions[questionNumber].text
    }
    
    func answers() -> [String] {
        return questions[questionNumber].answers
    }
    
    func nextQuestion() {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            scoreTotal = 0
        }
    }
}  // End of Class
