//
//  FirstView.swift
//  Desafio06
//
//  Created by Turma02-28 on 23/04/25.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Tela 1")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    FirstView()
}
