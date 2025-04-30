//
//  PagMusicView.swift
//  Desafio08
//
//  Created by Turma02-28 on 28/04/25.
//

import SwiftUI

struct PagMusicView: View{
    
    @State var recebe : Song
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack(spacing: 20) {
                AsyncImage(url: URL(string: recebe.capa)) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                } placeholder: {
                    ProgressView()
                }
                VStack{
                    Text(recebe.name)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .bold()
                    
                    Text(recebe.artist)
                        .foregroundStyle(.white)
                        .padding()
                    
                    Spacer()
                }
            }//.foregroundStyle(.white)
        }
    }
}
