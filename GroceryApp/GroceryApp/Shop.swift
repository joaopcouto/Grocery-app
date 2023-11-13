//
//  Shop.swift
//  GroceryApp
//
//  Created by João Pedro Couto on 13/11/23.
//

import SwiftUI

struct Shop: View {
    
    @State var goToCart = false
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    // Váriavel para os itens
    var items: [[Any]] = shopItems
    
    var body: some View {
        VStack(spacing: 5) {
            VStack {
                Text("Bom dia,")
                    .frame(width: 320, alignment: .leading)
                    .foregroundColor(.gray)
                Text("Vamos pedir itens fresquinhos para você")
                    .font(.system(size: 38, weight: .semibold, design: .rounded))
                    .frame(width: 320, alignment: .leading)
                Spacer().frame(height: 75)
                Text("Itens frescos")
                    .frame(width: 320, alignment: .leading)
                    .foregroundColor(.gray)
            }.padding(20)
            ScrollView() {
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(0..<items.count, id:\.self) { item in ShopItem(imageName: items[item][0] as! String, title: items[item][1] as! String, price: items[item][2] as! Double, color: items[item][3] as! Color, selfIndex: item)}
                }
            }.padding(15)
        }
        .navigationDestination(isPresented: $goToCart) {
            Cart()
        }
        .toolbar {
            ToolbarItem(placement: 
                    .navigationBarTrailing) {
                        Button() {
                            goToCart = true
                        }label: {
                            Image(systemName: "cart")
                        }
            }
        }
    }
}

#Preview {
    Shop()
}
