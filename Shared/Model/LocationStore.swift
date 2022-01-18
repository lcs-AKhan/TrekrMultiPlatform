//
//  LocationStore.swift
//  TrekrMultiPlatform
//
//  Created by Abdul-CS on 2022-01-18.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init() {
        
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        // Sort the list of locations alphabetically by name, in ascending order
        places.sort(by: {
            $0.name < $1.name
        })
    }
}

var testStore = LocationStore()
