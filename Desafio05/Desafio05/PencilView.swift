//
//  PencilView.swift
//  Desafio05
//
//  Created by Turma02-28 on 23/04/25.
//

import SwiftUI

struct PencilView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 250)
            Image(systemName: "paintbrush.pointed")
                .font(.system(size: 150))
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    PencilView()
}
