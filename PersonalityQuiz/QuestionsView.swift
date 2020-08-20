//
//  QuestionsView.swift
//  PersonalityQuiz
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct QuestionsView: View {
    
    @ObservedObject var quiz: QuizViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text(quiz.currentQuestion.text)
                    .font(.system(size: 32.0))
                
                Spacer()
                
                if quiz.currentQuestion.type == .single {
                    SingleAnswerStack(answers: quiz.currentAnswers)
                }
                
                if quiz.currentQuestion.type == .multiple {
                    MultipleAnswerStack(answers: quiz.currentAnswers)
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
        QuestionsView(quiz: QuizViewModel())
    }
}

struct SingleAnswerStack: View {
    
    var answers: [Answer]
    
    var body: some View {
        VStack(spacing: 20.0) {
            ForEach(answers, id: \.self) { answer in
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text(answer.text)
                }
            }
        }
    }
}

struct MultipleAnswerStack: View {
    
    var answers: [Answer]
    
    var body: some View {
        VStack(spacing: 20.0) {
            ForEach(answers, id: \.self) { answer in
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text(answer.text)
                }
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Submit Answer")
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
