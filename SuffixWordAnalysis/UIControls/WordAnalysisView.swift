//
//  WordAnalysisTextField.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import SwiftUI
import WidgetKit

struct WordAnalysisView: View {
    
    let data: SuffixWordAnalysisWidgetData
    
    @State var textfForAnalysis: String = ""
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGray6)
            VStack(alignment: .center, spacing: 4) {
                
                ZStack {
                    Color(UIColor.systemGray5)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 10)
                        .padding(.top, 10)
                    Text(data.placeHolder)
                        .minimumScaleFactor(0.8)
                }.frame(height: 120, alignment: .center)
                
                Button(action: {
                    // Do something ...
                }, label: {
                    Text("Analyze it").foregroundColor(.primary)
                })
                .frame(height: 50, alignment: .center)
                
                
                
                
//                Text(data.date, style: .relative)
//                    .minimumScaleFactor(0.8)
            }
        }
        
        
        
        
        
        
//        VStack(alignment: .leading, spacing: 10) {
//            TextField(data.placeHolder, text: $textfForAnalysis) { (value) in
//                // On editing changed
//            } onCommit: {
//                // On commit
//            }
//            .frame(maxWidth: .infinity, alignment: .center)
//            .frame(height: 50, alignment: .center)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            .autocapitalization(.none)
//            .padding(.horizontal)
//
//            Button(action: {}, label: {
//                Text("Analyze it!")
//            })
//            .padding(.horizontal)
//            .frame(width: 125, height: 35, alignment: .center)
//            .background(Color.secondary)
//            .font(Font.system(size: 18, weight: .bold, design: .rounded))
//            .foregroundColor(.white)
//            .animation(Animation.easeInOut(duration: 0.8))
//            .clipShape(RoundedRectangle(cornerRadius: 8))
//
//        }
//        .frame(maxWidth: .infinity)
//        .frame(height: 150, alignment: .center)
//        .clipShape(RoundedRectangle(cornerRadius: 8))
//        .padding(.horizontal)
    }
}

struct WordAnalysisTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // systemMedium, colorScheme light
            WordAnalysisView(data: .previewData).previewContext(WidgetPreviewContext(family: .systemMedium))
                .environment(\.colorScheme, .light)
            
            // systemMedium, colorScheme dark
            WordAnalysisView(data: .previewData).previewContext(WidgetPreviewContext(family: .systemMedium))
                .environment(\.colorScheme, .dark)
            
            // systemMedium, sizeCategory extraExtraExtraLarge
            WordAnalysisView(data: .previewData).previewContext(WidgetPreviewContext(family: .systemMedium))
                .environment(\.sizeCategory, .extraExtraExtraLarge)
            
            // systemMedium, sizeCategory extraExtraExtraLarge
            WordAnalysisView(data: .previewData).previewContext(WidgetPreviewContext(family: .systemSmall))
        }
    }
}
