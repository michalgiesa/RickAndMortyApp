//
//  OnboardingView.swift
//  RickAndMortyApp
//
//  Created by Michał Giesa on 26/08/2025.
//

import SwiftUI

struct OnboardingView: View {
    var onComplete: () -> Void

    var body: some View {
        VStack(spacing: 28) {
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(.systemGray6))
                .frame(width: 300, height: 300)
                .overlay(Text("Illustration").foregroundColor(.secondary))

            Text("Witaj w Discovery")
                .font(.largeTitle).bold()
            Text("Explore public APIs, save favorites and secure your profile with Face ID. This app is made to showcase iOS skills.")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal, 24)

            Spacer()
            Button(action: onComplete) {
                Text("Zaczynamy")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 12).fill(Color.accentColor))
                    .foregroundColor(.white)
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 40)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(onComplete: {})
    }
}
