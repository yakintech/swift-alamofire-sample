//
//  CategoryRepository.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import Foundation
import Alamofire


class CategoryRepository{
    
    //Hepsini getir, ekle, sil, güncelle, id ye göre getir
    //20 tablon olsa 100 tane metot olacak
    
    func GetAll(completionHandler: @escaping ([CategoryModel])-> Void){
        
        let request = AF.request("https://northwind.vercel.app/api/categories")
        
        request.responseDecodable(of: [CategoryModel].self){ response in
            
//            let statusCode = (response.response?.statusCode)!
            
            completionHandler(response.value!)
        }
    }
    
    
    func Add(categoryModel: CategoryModel, completionHandler: @escaping (CategoryModel) -> Void ){
        
        let newCategory : [String: Any] = [
            
            "name" : categoryModel.name,
            "description" : categoryModel.description
            
        ]
        
        
        AF.request("https://northwind.vercel.app/api/categories", method: .post, parameters: newCategory, encoding: JSONEncoding.default)
            .responseDecodable(of: CategoryModel.self){ response in
                
                //Data eklendikten sonra eklenen datayı completion handler aracılığıyla iletiyorum
                completionHandler(response.value!)
        
            }
    }
    
    
    func Delete(id: Int){
        
        AF.request("https://northwind.vercel.app/api/categories/\(id)", method: .delete)
            .responseData(){ response in
                
            }
        
    }
    
}


