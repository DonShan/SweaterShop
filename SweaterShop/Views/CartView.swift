//
//  CartView.swift
//  SweaterShop
//
//  Created by Madushan Senavirathna on 2022-12-12.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartManger: CartManager
    
    var body: some View {
        ScrollView {
            if cartManger.products.count > 0 {
                ForEach(cartManger.products, id: \.id){ product in
                    ProductRaw(product: product)
                }
                
                HStack {
                    Text("your cart total is")
                    Spacer()
                    Text("$ \(cartManger.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
