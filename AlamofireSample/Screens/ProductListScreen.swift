//
//  ProductList.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import SwiftUI

struct ProductListScreen: View {
    
    var productRepository = GenericRepository<ProductModel>()
    @State var products = [ProductModel]()
    
    var body: some View {
        VStack{
         
            List(products, id:\.name){item in
                
                Text(item.name)
                
            }
            
        }
        .onAppear(){
            productRepository.getAll(url: "/products"){ data in
                
                products = data;
                
            }
        }
    }
}

struct ProductListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductListScreen()
    }
}
