//
//  GenericRepository.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import Foundation
import Alamofire

//Decodable anahtar kelimesi sayesinde sadece ve sadece decodable olabilen struct veya class ları yolluyorum.

struct GenericRepository<T> where T : Decodable{
    
    var  baseUrl = "https://northwind.vercel.app/api";
    
    func getAll(url: String, completianHandler: @escaping(([T]) -> Void)){
        
        let request = AF.request(baseUrl + url);
        
        request.responseDecodable(of: [T].self){ response in
            completianHandler(response.value!)
        }
        
    }
    
    
    func Delete(url: String, id: Int){
        
        AF.request("\(url)\(id)", method: .delete)
            .responseData(){ response in
                
            }
        
    }
}

