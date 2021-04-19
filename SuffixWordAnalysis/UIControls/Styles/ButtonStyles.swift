//
//  ButtonStyles.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
    @Environment (\.isEnabled) var isEnabled : Bool
    
    let backgroundColor: UIColor
    let backgroundColorOpacity: Double
    let foregroundColor: UIColor
    let bordering: Bool
     
    func makeCapsule() -> AnyView {
        if bordering {
            return AnyView(Capsule(style: .continuous).stroke())
        } else {
            return AnyView(Capsule(style: .continuous).fill(Color(backgroundColor)).opacity(backgroundColorOpacity))
        }
    }
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .frame(height: 50, alignment: .center)
            .background(makeCapsule())
            
            
            
//            .background(bordering ?
//                            Capsule(style: .circular).stroke(style: StrokeStyle(lineWidth: bordering ? 1.0 : 0.0)).fill(Color(bordering ? .clear : backgroundColor).opacity(backgroundColorOpacity)) :
//                            Capsule(style: .circular) .fill(Color(bordering ? .clear : backgroundColor).opacity(backgroundColorOpacity)))
//
            .foregroundColor(Color(foregroundColor))
            .font(Font.system(size: 18, weight: .bold, design: .default))
        
    }
}
