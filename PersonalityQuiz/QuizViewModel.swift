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
    
    var questionIndex = 0
    
    var answersChosen: [Answer] = []
    
    var currentQuestion: Question {
        questions[questionIndex]
    }
    
    var currentAnswers: [Answer] {
        currentQuestion.answers
    }
    
    func appendAnswer(answer: Answer) {
        answersChosen.append(answer)
    }
    
    func nextQuestion() {
        
    }
}
