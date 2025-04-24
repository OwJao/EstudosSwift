//
//  PaintView.swift
//  Desafio05
//
//  Created by Turma02-28 on 23/04/25.
//

import SwiftUI

struct PaintView: View {
    var body: some View {
        ZStack {
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 250)
            Image(systemName: "paintbrush")
                .font(.system(size: 150))
                .foregroundColor(.pink)
        }
    }
}

#Preview {
    PaintView()
}
