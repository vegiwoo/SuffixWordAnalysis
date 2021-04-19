//
//  TextFieldStyles.swift
//  SuffixWordAnalysis
//
//  Created by Dmitry Samartcev on 19.04.2021.
//

import SwiftUI

struct CapsuleTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
            .frame(height: 50, alignment: .center)
            .background(Capsule(style: .continuous).stroke())
            .foregroundColor(Color.purple)
    }
}
