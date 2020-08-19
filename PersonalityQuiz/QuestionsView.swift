//
//  QuestionsView.swift
//  PersonalityQuiz
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct QuestionsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 32.0))
                
                Spacer()
                
                if false {
                    VStack(spacing: 20.0) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                
                if false {
                    VStack(spacing: 20.0) {
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Submit Answer")
                        }
                    }
                }
                
                if true {
                    VStack(spacing: 20.0) {
                        Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                        HStack {
                            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        }
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("Submit Answer")
                        }
                    }
                }
                
                Spacer()
                
                // Todo: Implemet ProgressView using UIKit, it seems to be missing in SwiftUI
            }
            .padding(20.0)
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
