//
//  ProductCard.swift
//  SweaterShop
//
//  Created by Madushan Senavirathna on 2022-12-12.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManger: CartManager
    
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    Text("\(product.price) $")
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background()
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
        .shadow(radius: 3)
            
            Button{
                cartManger.addToCart(product: product)
                
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
