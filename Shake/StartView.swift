//
//  ContentView.swift
//  Shake
//
//  Created by 神林沙希 on 2025/07/16.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 40) {
                Text("シェイクゲーム")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image("bottle")
                    .resizable()
                    .frame(width: 100, height: 300)
                
                Text("少しずつ振りながらiPhoneを回していこう\n爆発させた人の負け！")
                    .font(.body)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: GameView()){
                    Text("始める")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 250, height: 70)
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadius: 20))
                }
            }
            .padding(.horizontal, 32)
        }
        
    }
}

#Preview {
    StartView()
}
