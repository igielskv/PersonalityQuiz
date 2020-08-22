//
//  QuizViewModel.swift
//  PersonalityQuiz
//
//  Created by Manoli on 20/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

class QuizViewModel: ObservableObject {
    var questions: [Question]
    
    init(questions: [Question] = []) {
        self.questions = questions
    }
    
    @Published var questionIndex = 0
    
    @Published var answersChosen: [Answer] = []
    
    @Published var hasStarted: Bool = false
    
    @Published var isFinished: Bool = false
    
    var currentQuestion: Question {
        questions[questionIndex]
    }
    
    var currentAnswers: [Answer] {
        currentQuestion.answers
    }
    
    var resultAnswer: String!
    var resultDefinition: String!
    
    func appendAnswer(answer: Answer) {
        answersChosen.append(answer)
    }
    
    func nextQuestion() {
        if questionIndex < questions.count - 1 {
            questionIndex += 1
        } else {
            calculatePersonalityResults()
            isFinished = true
        }
    }
    
    func calculatePersonalityResults() {
        let frequencyOfAnswers = answersChosen.reduce(into: [:]) { (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted { (pair1, pair2) in
            return pair1.value > pair2.value
        }
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultAnswer = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinition = mostCommonAnswer.definition
    }
    
    func reset() {
        questionIndex = 0
        answersChosen.removeAll()
        isFinished = false
    }
}
