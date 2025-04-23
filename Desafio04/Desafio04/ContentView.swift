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
    @State private var velocidade: Double = 0
    @State private var resultado: Double = 0
    @State private var imagemAnimal: String = "interrogacao"
    @State private var corFundo: Color = Color.gray
    
    var body: some View {
        ZStack {
            corFundo
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                VStack(spacing: 10) {
                    Text("Digite a distância (km):")
                        .foregroundColor(.white)
                    
                    TextField("0", text: $distancia)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .onChange(of: distancia) { newValue in
                            if let valor = Double(newValue) {
                                distancia = String(valor)
                            } else {
                                distancia = ""
                            }
                        }
                    
                    Text("Digite o tempo (h):")
                        .foregroundColor(.white)
                    
                    TextField("0", text: $tempo)
                        .foregroundColor(.black)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .onChange(of: tempo) { newValue in
                            if let valor = Double(newValue) {
                                tempo = String(valor)
                            } else {
                                tempo = ""
                            }
                        }
                    
                    Button("Calcular") {
                        if let distanciaValor = Double(distancia), let tempoValor = Double(tempo), tempoValor != 0 {
                            resultado = distanciaValor / tempoValor
                            velocidade = resultado
                            if velocidade < 10 {
                                imagemAnimal = "turtle"
                                corFundo = Color.green
                            } else if velocidade < 30 {
                                imagemAnimal = "elephant"
                                corFundo = Color.cyan
                            } else if velocidade < 50 {
                                imagemAnimal = "avestruz"
                                corFundo = Color.orange
                            } else if velocidade < 70 {
                                imagemAnimal = "lion"
                                corFundo = Color.yellow
                            } else {
                                imagemAnimal = "guepardo"
                                corFundo = Color.red
                            }
                        }
                    }
                }
                .padding()
                .frame(maxWidth: 300)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(20)
                .offset(CGSize(width: 0.0, height: -250.0))
            }
            
            Text(String(format: "%.2f km/h", velocidade))
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
            Image(imagemAnimal)
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
            
            VStack(alignment: .trailing, spacing: 8) {
                HStack {
                    Text("TARTARUGA (0 - 9.9km/h)")
                    Circle().fill(Color.green).frame(width: 15)
                }
                HStack {
                    Text("ELEFANTE (10 - 29.9km/h)")
                    Circle().fill(Color.cyan).frame(width: 15)
                }
                HStack {
                    Text("AVESTRUZ (30 - 49.9km/h)")
                    Circle().fill(Color.orange).frame(width: 15)
                }
                HStack {
                    Text("LEÃO (50 - 69.9km/h)")
                    Circle().fill(Color.yellow).frame(width: 15)
                }
                HStack {
                    Text("GUEPARDO (70+ km/h)")
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
    }
}

#Preview {
    ContentView()
}
