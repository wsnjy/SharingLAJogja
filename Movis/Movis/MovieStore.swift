//
//  MovieStore.swift
//  Movis
//
//  Created by Wisnu Sanjaya on 31/01/20.
//  Copyright © 2020 Wisnu Sanjaya. All rights reserved.
//

import Foundation
import Combine

class MovieStore: ObservableObject {
    @Published var movies: [Movie] = moviesData
}
