//
//  ShopItem.swift
//  GroceryApp
//
//  Created by João Pedro Couto on 13/11/23.
//

import SwiftUI

struct ShopItem: View {
    
    var imageName: String
    var title: String
    var price: Double
    var color: Color
    var selfIndex: Int // Para checar qual item foi pressionado na lista
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(color)
                .opacity(0.25)
                .frame(width: 170, height: 230)
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 80, height: 80)
                Text(title)
                Button() {
                    cartItems.append(shopItems[selfIndex])
                } label: {
                    Text("R$\(String(format: "%.2f", price))")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 40)
                        .background(color)
                }
            }
        }
    }
}

#Preview {
    ShopItem(imageName: "avocado", title: "Abacate", price: 6.00, color: .green, selfIndex: 0)
}
