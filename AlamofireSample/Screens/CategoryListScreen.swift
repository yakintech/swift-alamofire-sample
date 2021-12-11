//
//  CategoryListScreen.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import SwiftUI

struct CategoryListScreen: View {
//    var categoryRepository = CategoryRepository()
    var categoryRepository = GenericRepository<CategoryModel>()
    @State var categorytList : [CategoryModel] = [CategoryModel]()
    
    
    var body: some View {
        
      
        VStack{
            
            List(categorytList, id:\.name){item in
                
                Text(item.name)
                
            }
            
        }
        .onAppear(){
            
            categoryRepository.getAll(url: "/categories"){ categories in
                categorytList = categories

            }
            
          //  categoryRepository.Add(categoryModel: CategoryModel()) {res in}
            
        }
        
    }
}

struct CategoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListScreen()
    }
}
