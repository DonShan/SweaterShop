//
//  Product.swift
//  SweaterShop
//
//  Created by Madushan Senavirathna on 2022-12-12.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange sweater", image: "sweater1", price: 54),
                   Product(name: "Color sweater", image: "sweater2", price: 89),
                   Product(name: "Dark red sweater", image: "sweater3", price: 79),
                   Product(name: "Red sweater", image: "sweater4", price: 94),
                   Product(name: "White sweater", image: "sweater5", price: 99),
                   Product(name: "Gray sweater", image: "sweater6", price: 65),
                   Product(name: "Dart green sweater", image: "sweater7", price: 54),
                   Product(name: "Multi color sweater", image: "sweater8", price: 83)]
