//
//  ContentView.swift
//  Desafio09
//
//  Created by Turma02-28 on 28/04/25.
//

import SwiftUI
import MapKit

struct Location: Hashable {
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}


struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    @State private var showingSheet = false
    
    @State private var selectedPlace = Location(
        nome: "Grande Muralha da China",
        foto:"https://diariodoturismo.com.br/storage/2015/07/Muralha_China_Wikicommons_07_15.jpg",  // Coloque o nome correto da sua imagem
        descricao: "A maior muralha do mundo, construída para proteger os territórios do Império Chinês.",
        latitude: 40.4319,
        longitude: 116.5704
    )
    

    var body: some View {
        let locations = [
                Location(
                    nome: "Grande Muralha da China",
                    foto:"https://diariodoturismo.com.br/storage/2015/07/Muralha_China_Wikicommons_07_15.jpg",  // Coloque o nome correto da sua imagem
                    descricao: "A maior muralha do mundo, construída para proteger os territórios do Império Chinês.",
                    latitude: 40.4319,
                    longitude: 116.5704
                ),
                Location(
                    nome: "Petra",
                    foto:"https://super.abril.com.br/wp-content/uploads/2018/07/5670698a82bee174ca0358a8petra2.jpeg",  // Coloque o nome correto da sua imagem
                    descricao: "Uma antiga cidade perdida, esculpida nas rochas, localizada na Jordânia.",
                    latitude: 30.3285,
                    longitude: 35.4444
                ),
                Location(
                    nome: "Cristo Redentor",
                    foto:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Cristo_Redentor_-_Rio_de_Janeiro_-_20230321174546.jpg/2560px-Cristo_Redentor_-_Rio_de_Janeiro_-_20230321174546.jpg",  // Coloque o nome correto da sua imagem
                    descricao: "Estátua icônica localizada no Rio de Janeiro, um símbolo do Brasil.",
                    latitude: -22.9519,
                    longitude: -43.2105
                ),
                Location(
                    nome: "Machu Picchu",
                    foto:"https://www.infomoney.com.br/wp-content/uploads/2019/06/machu-picchu-1.jpg?quality=70",  // Coloque o nome correto da sua imagem
                    descricao: "Cidade inca antiga localizada no Peru, conhecida por suas ruínas impressionantes.",
                    latitude: -13.1631,
                    longitude: -72.5450
                ),
                Location(
                    nome: "Chichén Itzá",
                    foto:"https://www.worldhistory.org/uploads/images/3048.jpg",  // Coloque o nome correto da sua imagem
                    descricao: "Uma cidade maia localizada no México, famosa pela pirâmide de Kukulkán.",
                    latitude: 20.6829,
                    longitude: -88.5686
                ),
                Location(
                    nome: "Coliseu",
                    foto:"https://www.papeiseparede.com.br/6951-thickbox_default/foto-mural-coliseu.jpg.webp",  // Coloque o nome correto da sua imagem
                    descricao: "O famoso anfiteatro romano em Roma, Itália, onde aconteciam batalhas de gladiadores.",
                    latitude: 41.8902,
                    longitude: 12.4922
                ),
                Location(
                    nome: "Taj Mahal",
                    foto:"https://super.abril.com.br/wp-content/uploads/2016/12/taj-mahal-600.jpg?quality=70&w=720&crop=1",  // Coloque o nome correto da sua imagem
                    descricao: "Um mausoléu de mármore branco, localizado na Índia, e uma das sete maravilhas do mundo.",
                    latitude: 27.1751,
                    longitude: 78.0421
                )
            ]

        ZStack {
            Map(position: $position){
                ForEach(locations, id: \.self){ lugares in
                    Annotation(lugares.nome, coordinate: CLLocationCoordinate2D(latitude: lugares.latitude, longitude: lugares.longitude)){
                        Image(systemName: "star.circle")
                            .onTapGesture{
                                selectedPlace = lugares
                                showingSheet.toggle()
                            }.sheet(isPresented: $showingSheet) {
                                SubirView(recebe: $selectedPlace)
                            }
                    }
                }
            }
                .ignoresSafeArea()
            VStack{
                Picker("Escolha um lugar", selection: $selectedPlace) {
                                ForEach(locations, id: \.self) { lugar in
                                    Text(lugar.nome)
                                    
                                }
                            }
                .pickerStyle(.menu)
                .padding()
                .background(.thickMaterial)
                .cornerRadius(8)
                .onChange(of: selectedPlace) { newPlace in
                    withAnimation{
                        position = .region(MKCoordinateRegion(
                            center: CLLocationCoordinate2D(
                                latitude: newPlace.latitude,
                                longitude: newPlace.longitude),
                            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
                        ))
                    }
                                }
                    Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
