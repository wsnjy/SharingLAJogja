//
//  DetailMovie.swift
//  Movis
//
//  Created by Wisnu Sanjaya on 31/01/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import SwiftUI

struct DetailMovie: View {
    
    var movie: Movie
    
    var body: some View {
        ScrollView{
            VStack {
                ZStack {
                    Image(movie.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.5), Color.white.opacity(0.3)]), startPoint: .bottom, endPoint: .top)
                }
                VStack {
                    HStack() {
                        Text(movie.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading, 20)
                        Spacer()
                        HStack {
                            Image(systemName: "star.fill")                        .foregroundColor(Color.yellow)
                            Text(movie.rating)
                            .bold()
                        }                            .padding(.trailing, 20)
                    }
                    Text(movie.desc)
                        .padding(.leading, 20)
                        .frame(maxWidth: UIScreen.main.bounds.width)
                        .font(.system(size: 20, weight: .regular))
                        .foregroundColor(Color.black)
                }

            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DetailMovie_Previews: PreviewProvider {
    static var previews: some View {
        DetailMovie(movie: moviesData[0])
    }
}
