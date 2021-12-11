//
//  SupplierRepository.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import Foundation
import Alamofire

class SupplierRepository{
    
    func GetAll(completionHandler: @escaping ([SupplierModel])-> Void){
        
        let request = AF.request("https://northwind.vercel.app/api/suppliers")
        
        request.responseDecodable(of: [SupplierModel].self){ response in
            
//            let statusCode = (response.response?.statusCode)!
            
            completionHandler(response.value!)
        }
    }
    
}
