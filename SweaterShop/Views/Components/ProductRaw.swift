//
//  ProductRaw.swift
//  SweaterShop
//
//  Created by Madushan Senavirathna on 2022-12-12.
//

import SwiftUI

struct ProductRaw: View {
    
    @EnvironmentObject var cartManger: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                Text("$ \(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManger.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(width: .infinity, alignment: .leading)
    }
}

struct ProductRaw_Previews: PreviewProvider {
    static var previews: some View {
        ProductRaw(product: productList[3])
            .environmentObject(CartManager())
    }
}
