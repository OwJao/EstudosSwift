//
//  ContentView.swift
//  Desafio01
//
//  Created by Turma02-28 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack{
                Rectangle()
                    .fill(Color.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
            Spacer()
            HStack{
                Rectangle()
                    .fill(Color.green)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Spacer()
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
