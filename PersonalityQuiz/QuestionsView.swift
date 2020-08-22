//
//  QuestionsView.swift
//  PersonalityQuiz
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct QuestionsView: View {
    
    @ObservedObject var quiz: QuizViewModel = QuizViewModel(questions: questionsData)
    
    var body: some View {
        NavigationView {
            VStack {
                Text(quiz.currentQuestion.text)
                    .font(.system(size: 32.0))
                
                Spacer()
                
                if quiz.currentQuestion.type == .single {
                    SingleAnswerStack(quiz: quiz)
                }
                
                if quiz.currentQuestion.type == .multiple {
                    MultipleAnswerStack(quiz: quiz)
                }
                
                if quiz.currentQuestion.type == .ranged {
                    RangedAnswerStack(answers: quiz.currentAnswers)
                }
                
                Spacer()
                
                // Todo: Implemet ProgressView using UIKit, it seems to be missing in SwiftUI
            }
            .padding(20.0)
            .navigationBarTitle("Question #\(quiz.questionIndex + 1)", displayMode: .inline)
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}

struct SingleAnswerStack: View {
    var quiz: QuizViewModel
    
    var body: some View {
        VStack(spacing: 20.0) {
            ForEach(quiz.currentAnswers, id: \.self) { answer in
                Button(action: { self.singleAnswerButtonPressed(answer: answer) }) {
                    Text(answer.text)
                }
            }
        }
    }
    
    func singleAnswerButtonPressed(answer: Answer) {
        quiz.appendAnswer(answer: answer)
        quiz.nextQuestion()
    }
}

struct MultipleAnswerStack: View {
    var quiz: QuizViewModel
    
    @State var toggleStates: [Bool] = Array(repeating: false, count: 4)
    
    var body: some View {
        VStack(spacing: 20.0) {
            ForEach(0 ..< quiz.currentAnswers.count) { index in
                Toggle(isOn: self.$toggleStates[index]) {
                    Text(self.quiz.currentAnswers[index].text)
                }
            }
            
            Button(action: { self.multipleAnswerButtonPressed()}) {
                Text("Submit Answer")
            }
        }
    }
    
    func multipleAnswerButtonPressed() {
        for index in 0 ..< quiz.currentAnswers.count {
            if toggleStates[index] {
                quiz.answersChosen.append(quiz.currentAnswers[index])
            }
        }
    }
}

struct RangedAnswerStack: View {
    
    var answers: [Answer]
    
    var body: some View {
        VStack(spacing: 20.0) {
            Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
            HStack {
                Text(answers.first!.text)
                Spacer()
                Text(answers.last!.text)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Submit Answer")
            }
        }
    }
}
