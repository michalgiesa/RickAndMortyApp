//
//  LounchView.swift
//  RickAndMortyApp
//
//  Created by Michał Giesa on 26/08/2025.
//

import SwiftUI

struct LaunchView: View {
    @State private var isAuthenticated = false
    @State private var showOnboarding = true

    var body: some View {
        Group {
            if showOnboarding && !isAuthenticated {
                OnboardingView(onComplete: {
                    withAnimation { showOnboarding = false }
                })
            } else if !isAuthenticated {
                AuthView(onAuthSuccess: {
                    withAnimation { isAuthenticated = true }
                })
            } else {
                MainTabView()
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}

