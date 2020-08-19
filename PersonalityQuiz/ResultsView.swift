//
//  ResultsView.swift
//  PersonalityQuiz
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct ResultsView: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 50.0))
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 17.0))
        }
        .padding(.horizontal, 20.0)
        .navigationBarTitle("Results", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Done")
        })
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultsView()
        }
    }
}
