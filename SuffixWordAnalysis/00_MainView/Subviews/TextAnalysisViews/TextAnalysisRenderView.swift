//
//  TextAnalysisRenderView.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import SwiftUI



struct TextAnalysisRenderView: View {
    
    var placeholder: String = "Enter a word for suffix analysis"
    @State var wordForSuffixAnalysis: String = ""

    var body: some View {
        VStack (alignment: .center) {
            HStack {
                
                TextField(placeholder, text: $wordForSuffixAnalysis) { (value) in
                    // Do something - typing
                } onCommit: {
                    // Do something - end of typing
                }.textFieldStyle(CapsuleTextFieldStyle())
                
                Button(action: {
                    print("analize it!")
                }, label: {
                    Text("Analize")
                })
                .buttonStyle(CapsuleButtonStyle(backgroundColor: .purple, backgroundColorOpacity: 0.7, foregroundColor: .white, bordering: false))
                .frame(width: 100)
                .environment(\.isEnabled, !wordForSuffixAnalysis.isEmpty)
            }
            
            Spacer()
            HStack {
                Button(action: {
                    print("clear all")
                }, label: {
                    Text("Clear")
                })
                .buttonStyle(CapsuleButtonStyle(backgroundColor: .clear, backgroundColorOpacity: 0.7, foregroundColor: .purple, bordering: true))
                
                Button(action: {
                    print("save")
                }, label: {
                    Text("Save")
                })
                .buttonStyle(CapsuleButtonStyle(backgroundColor: .purple, backgroundColorOpacity: 0.7, foregroundColor: .white, bordering: false))
            }
            
            
        }.padding()
        
        //.background(Color(UIColor.systemTeal).opacity(0.2))
        
        
        

    }
}

struct TextAnalysisRenderView_Previews: PreviewProvider {
    static var previews: some View {
        TextAnalysisRenderView()
    }
}
