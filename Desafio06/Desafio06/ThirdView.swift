//
//  ThirdView.swift
//  Desafio06
//
//  Created by Turma02-28 on 24/04/25.
//

import SwiftUI

struct ThirdView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            Button("Press to dismiss") {
                        dismiss()
                    }
                    .font(.title3)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .foregroundStyle(.white)
        }
    }
}

#Preview {
    ThirdView()
}
