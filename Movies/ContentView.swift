//
//  ContentView.swift
//  Movies
//
//  Created by Frank Bara on 11/4/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    let movies: [[Movie]] = [
        [.init(name: "Deadpool", imageName: "deadpool"),
        .init(name: "The Shape of Water", imageName: "water")],
        [.init(name: "Incredibles 2", imageName: "incredibles"),
        .init(name: "Tomb Raider", imageName: "raider")],
        [.init(name: "Deadpool", imageName: "deadpool"),
        .init(name: "The Shape of Water", imageName: "water")],
        [.init(name: "Incredibles 2", imageName: "incredibles"),
        .init(name: "Tomb Raider", imageName: "raider")]
    ]
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                HStack {
                    Text("BaraLabs Movies")
                        .font(.system(size: 24, weight: .semibold))
                    }
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(self.movies, id: \.self) { row in
                            HStack(spacing: 16) {
                                ForEach(row) { movie in
                                        MovieView(movie: movie, size: geo.size)
                                }
                            }
                        }
                        Spacer()
                    }.padding(.horizontal, 16)
                }
            }
            
        }
        
        
        
    }
}

struct MovieView: View {
    
    let movie: Movie
    let size: CGSize
    
    var body: some View {
        
        VStack(spacing: 10) {
            Image(movie.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: (size.width - 48) / 2, height: 250)
                .clipped()
                .cornerRadius(8)
                .shadow(radius: 10)
            
            Text(movie.name)
                .font(.system(size: 15, weight: .bold))
            
            Button(action: {
                
            }) {
                Text("Buy Tickets")
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .background(Color.red)
                    .cornerRadius(8)
                    .shadow(radius: 10)
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
