//
//  MainTabView.swift
//  RickAndMortyApp
//
//  Created by Michał Giesa on 26/08/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Discover - placeholder")
                .tabItem {
                    Label("Discover", systemImage: "sparkles")
                }

            Text("Favorites - placeholder")
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }

            Text("Profile - placeholder")
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
