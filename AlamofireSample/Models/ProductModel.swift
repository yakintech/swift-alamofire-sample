//
//  ProductModel.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import Foundation


struct ProductModel : Decodable{
    var name : String = ""
    var unitPrice = 0.0
    var unitsInStock = 0
}
