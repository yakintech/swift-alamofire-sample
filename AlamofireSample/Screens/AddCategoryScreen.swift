//
//  AddCategoryScreen.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import SwiftUI

struct AddCategoryScreen: View {
    
    @State var categoryModel = CategoryModel()
//    var categoryRepository = CategoryRepository()
    
    var categoryRepository = GenericRepository<CategoryModel>();
    
    
    var body: some View {
        Form{
            Section(header: Text("Add Category")){
                
                TextField("Name", text:$categoryModel.name)
                TextField("Description", text:$categoryModel.description)
                
                Button("Add"){
                    
                    categoryRepository.Add(url:"/categories",  newModel: categoryModel ){res in

                    }
                    
                   // categoryRepository.Delete(id: 8)
                    
                }
                
            
            }
        }
    }
}

struct AddCategoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryScreen()
    }
}
