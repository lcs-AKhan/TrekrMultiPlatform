//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Abdul-CS on 2022-01-18.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationDetail(location: Location.example)
            }
        }
    }
}
