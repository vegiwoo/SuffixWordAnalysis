//
//  MainViewRenderView.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 18.04.2021.
//

import SwiftUI

struct MainViewRenderView: View {
    
    @Binding var selection: Int
    @Binding var segmentes: [String]
    
    var body: some View {
        VStack {
            Text("Suffixes")
                .titleStyle()
                .foregroundColor(Color(UIColor.purple))
            
            
            Picker("", selection: $selection) {
                ForEach(0..<segmentes.count) {index in
                    Text("\(segmentes[index])")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            if selection == 0 {
                PopularSuffixesView()
            } else if selection == 1 {
                AllSuffixesView()
            }
        }.animation(Animation.easeOut(duration: 0.3))
    }
}

struct MainViewRenderView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewRenderView(selection: .constant(0), segmentes: .constant(["First", "Second"]))
    }
}
