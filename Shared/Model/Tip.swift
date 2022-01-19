//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Abdul-CS on 2022-01-19.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
