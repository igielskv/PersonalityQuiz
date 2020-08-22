//
//  ResultsView.swift
//  PersonalityQuiz
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct ResultsView: View {
    var quiz: QuizViewModel
    
    var body: some View {
        VStack {
            Text(quiz.resultAnswer)
                .font(.system(size: 50.0))
            Text(quiz.resultDefinition)
                .font(.system(size: 17.0))
        }
        .padding(.horizontal, 20.0)
        .navigationBarTitle("Results", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(trailing: Button(action: doneButtonTapped) {
            Text("Done")
        })
    }
    
    func doneButtonTapped() {
        quiz.hasStarted = false
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultsView(quiz: QuizViewModel(questions: questionsData))
        }
    }
}
