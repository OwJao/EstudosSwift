//
//  ContentView.swift
//  Desafio04
//
//  Created by Turma02-28 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tempo: String = ""
    @State private var distancia: String = ""
    @State private var velocidade: Double = 0.0
    var body: some View {
        ZStack {
            Color.gray
            .ignoresSafeArea()
            
            VStack(spacing:20){
                VStack(spacing:10){
                Text("Digite a distância (km):")
                        .foregroundColor(.white)
                    TextField("0", text: $distancia)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                    
                Text("Digite a tempo (h):")
                        .foregroundColor(.white)
                    TextField("0", text: $tempo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                    
                    Button("Calcular") {
                        calcularVelocidade()
                    }
                }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .offset(CGSize(width: 0.0, height: -250.0))
            }
                
            Text(String(format: "%.2f km/h", velocidade))
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
            Image("interrogacao")
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            VStack(alignment: .trailing, spacing: 8) {
                HStack{
                    Text("TARTARUGA (0 - 9.9km/h)")
                    Circle().fill(Color.green).frame(width: 15)
                }
                HStack{
                    Text("ELEFANTE   (0 - 9.9km/h)")
                    Circle().fill(Color.cyan).frame(width: 15)
                }
                HStack{
                    Text("AVESTRUZ  (0 - 9.9km/h)")
                    Circle().fill(Color.orange).frame(width: 15)
                }
                HStack{
                    Text("LEÃO      (0 - 9.9km/h)")
                    Circle().fill(Color.yellow).frame(width: 15)
                }
                HStack{
                    Text("GUEPARDO (0 - 9.9km/h)")
                    Circle().fill(Color.red).frame(width: 15)
                }
            }
            .padding()
            .background(Color.black)
            .cornerRadius(20)
            .foregroundColor(.white)
            .frame(minWidth: 250)
            .offset(CGSize(width: 0.0, height: 300.0))
        }
        .padding()
    }
    func calcularVelocidade() {
        let d = Double(distancia) ?? 0
        let t = Double(tempo) ?? 1
        velocidade = d / t
    }
}


#Preview {
    ContentView()
}
