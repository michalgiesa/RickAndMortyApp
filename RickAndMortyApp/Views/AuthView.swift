//
//  AuthView.swift
//  RickAndMortyApp
//
//  Created by Michał Giesa on 26/08/2025.
//

import SwiftUI

struct AuthView: View {
    var onAuthSuccess: () -> Void
    @State private var nickname: String = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Utwórz profil lokalny")
                    .font(.title2).bold()
                TextField("Twój nick", text: $nickname)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 24)

                Button(action: {
                    onAuthSuccess()
                }) {
                    Text("Dalej")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 12).fill(Color.accentColor))
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 24)

                Spacer()
            }
            .padding(.top, 40)
            .navigationTitle("Profil")
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView(onAuthSuccess: {})
    }
}
