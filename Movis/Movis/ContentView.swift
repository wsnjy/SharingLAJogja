//
//  ContentView.swift
//  Movis
//
//  Created by Wisnu Sanjaya on 31/01/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var store = MovieStore()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(store.movies) { movie in
                    NavigationLink(destination: DetailMovie(movie: movie)) {
                    HStack {
                        Image(movie.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        .frame(width: 90, height: 120)
                        .cornerRadius(8)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 10)
                        VStack(alignment: .leading, spacing: 8.0) {
                            HStack {
                                Text(movie.title)
                                    .font(.title)
                                    .bold()
                                    .lineLimit(1)
                                Text(movie.year)
                            }
                            Text(movie.desc)
                            .lineLimit(2)
                                .foregroundColor(.secondary)
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text(movie.rating)
                            }
                        }
                    }.padding(.horizontal, 8)

                    }
                }
            }
        .navigationBarTitle(Text("LK21 Movie"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var desc: String
    var image: String
    var rating: String
    var year: String
}

let moviesData = [
    Movie(title: "Joker", desc: "In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.", image: "joker", rating: "8.6", year: "2019"),
    Movie(title: "1917", desc: "April 6th 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message, that will stop 1,600 men, from walking straight into a deadly trap.", image: "1917", rating: "8.5", year: "2019"),
    Movie(title: "Gisaengchung", desc: "All unemployed, Ki-taek and his family take peculiar interest in the wealthy and glamorous Parks, as they ingratiate themselves into their lives and get entangled in an unexpected incident.", image: "parasite", rating: "8.6", year: "2019"),
    Movie(title: "Once Upon a Time... in Hollywood", desc: "A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood's Golden Age in 1969 Los Angeles.", image: "onceupon", rating: "7.8", year: "2019"),
    Movie(title: "The Irishman", desc: "Frank The Irishman Sheeran is a man with a lot on his mind. The former labor union high official and hitman, learned to kill serving in Italy during the Second World War. He now looks back on his life and the hits that defined his mob career, maintaining connections with the Bufalino crime family. In particular, the part he claims to have played in the disappearance of his life-long friend, Jimmy Hoffa, the former president of the International Brotherhood of Teamsters, who mysteriously vanished in late July 1975 at the age of 62. Written by bcarruthers-76500", image: "irishman", rating: "8", year: "2019"),
    Movie(title: "Bad Boys", desc: "Marcus and Mike have to confront new issues (career changes and midlife crises), as they join the newly created elite team AMMO of the Miami police department to take down the ruthless Armando Armas, the vicious leader of a Miami drug cartel.", image: "badboys", rating: "7.3", year: "2020"),
]
