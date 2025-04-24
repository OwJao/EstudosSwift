//
//  PaintTableView.swift
//  Desafio05
//
//  Created by Turma02-28 on 23/04/25.
//

import SwiftUI

struct PaintTableView: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 250)
            Image(systemName: "paintpalette")
                .font(.system(size: 150))
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    PaintTableView()
}
