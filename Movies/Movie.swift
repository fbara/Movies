//
//  Movie.swift
//  Movies
//
//  Created by Frank Bara on 11/5/19.
//  Copyright © 2019 BaraLabs. All rights reserved.
//

import Foundation

struct Movie: Identifiable, Hashable {
    let id = UUID.init()
    let name, imageName: String
}
