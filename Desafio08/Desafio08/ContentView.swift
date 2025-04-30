//
//  ContentView.swift
//  Desafio08
//
//  Created by Turma02-28 on 25/04/25.
//

import SwiftUI

struct Song : Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    @State  var selectedMusic = Song(id: 0, name: "Papercut", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg")
   @State var arrayMusicas = [
        Song(id: 0, name: "Papercut", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 1, name: "One Step Closer", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 2, name: "With You", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 3, name: "Points of Authority", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 4, name: "Crawling", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 5, name: "Runaway", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 6, name: "By Myself", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 7, name: "In the End", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 8, name: "A Place for My Head", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg"),
        Song(id: 9, name: "Pushing me Away", artist: "Linkin Park", capa: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg")
    ]
    var body: some View {
        NavigationStack{
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [.blue, .black, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                    ScrollView{
                        VStack{
                            AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg")){ image in image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            } placeholder: {
                                // Adicione aqui um placeholder de sua escolha
                                Color.gray
                            }.frame(width: 200, height: 200)
                            
                            HStack{
                                Text("HackaFM")
                                    .font(.title)
                                    .foregroundStyle(.white)
                                    Spacer()
                            }.padding(20)
                            
                            HStack{
                                AsyncImage(url: URL(string: "https://m.media-amazon.com/images/I/81iC+O0ec2L._UF894,1000_QL80_.jpg")){ image in image
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                } placeholder: {
                                    // Adicione aqui um placeholder de sua escolha
                                    Color.gray
                                }.frame(width: 35, height: 35)
                                Text("HackaSong").foregroundStyle(.white)
                                    .font(.subheadline)
                                Spacer()
                            }.padding(.leading, 25)
                            
                            VStack{
                                ForEach(arrayMusicas) { musica in
                                    NavigationLink(destination: PagMusicView(recebe: musica)){
                                        HStack{
                                            AsyncImage(url: URL(string: musica.capa)){ image in image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                            } placeholder: {
                                                Color.gray
                                            }.frame(width: 90, height: 30)
                                            VStack{
                                                Text(musica.name).foregroundStyle(.white).font(.subheadline)
                                                Text(musica.artist).foregroundStyle(.white).font(.subheadline)
                                            }
                                            .frame(width: 200,height: 60)
                                            Image(systemName: "ellipsis").foregroundColor(.white)
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                        }
                                    }
                                }
                            } //VStack de lista das músicas
                            
                        }.padding(.top, 60)
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
