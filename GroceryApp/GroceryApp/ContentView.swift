//
//  ContentView.swift
//  GroceryApp
//
//  Created by João Pedro Couto on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var changeScreen = false 
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300,
                        height: 300)
                Text("Nós entregamos itens de mercearia na porta da sua casa")
                    .font(.system(size: 42, weight: .bold, design: .rounded))
                    .multilineTextAlignment(.center)
                Text("A mercearia oferece vegetais e frutas frescas")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button() {
                    changeScreen = true
                }   label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                        Text("Iniciar")
                            .foregroundColor(.white)
                            .bold()
                    }
                }.frame(width: 200, height: 70)
                    .foregroundColor(.purple)
            }
            .navigationDestination(isPresented: $changeScreen){
                Shop()    
            }
        }
    }
}

#Preview {
    ContentView()
}
