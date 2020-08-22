//
//  IntroductionView.swift
//  PersonalityQuiz
//
//  Created by Manoli on 15/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct IntroductionView: View {
    
    @ObservedObject var quiz: QuizViewModel = QuizViewModel(questions: questionsData)
    
    var body: some View {
        VStack {
            HStack {
                Text("🐶")
                    .font(.system(size: 40.0))
                Spacer()
                Text("🐱")
                    .font(.system(size: 40.0))
            }
            
            Spacer()
            
            Text("Which Animal Are You?")
                .font(.custom("Georgia", size: 30.0))
            
            Button(action: { self.quiz.hasStarted = true }) {
                Text("Begin Personality Quiz")
                    .font(.system(size: 15.0))
            }
            .sheet(isPresented: $quiz.hasStarted, onDismiss: quiz.reset) {
                QuestionsView(quiz: self.quiz)
            }
            
            Spacer()
            
            HStack {
                Text("🐰")
                    .font(.system(size: 40.0))
                Spacer()
                Text("🐢")
                    .font(.system(size: 40.0))
            }
        }
        .padding(.horizontal, 20.0)
    }
}

struct IntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionView()
    }
}
