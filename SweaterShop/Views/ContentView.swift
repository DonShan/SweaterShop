//
//  ContentView.swift
//  SweaterShop
//
//  Created by Madushan Senavirathna on 2022-12-12.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cartManager = CartManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20, alignment: .center)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { products in
                        ProductCard(product: products)
                            .environmentObject(cartManager)
                    }
                    
                }
                .padding()
            }
            .navigationTitle(Text("Sweater shop"))
            .toolbar(){
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
