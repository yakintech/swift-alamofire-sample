//
//  SupplierListScreen.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import SwiftUI

struct SupplierListScreen: View {
    
//    var supplierRepository = SupplierRepository()
    var supplierRepository = GenericRepository<SupplierModel>()
    
    @State var supplierList : [SupplierModel] = [SupplierModel]()
    
    
    
    var body: some View {
        
        
        VStack{
            
            List(supplierList, id:\.companyName){item in
                
                Text(item.companyName)
                
            }
            
        }
        .onAppear(){
            
            supplierRepository.getAll(url: "/suppliers"){ suppliers in
                supplierList = suppliers

            }
            
        }
        
        
        
    }
}

struct SupplierListScreen_Previews: PreviewProvider {
    static var previews: some View {
        SupplierListScreen()
    }
}
