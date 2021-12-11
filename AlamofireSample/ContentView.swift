//
//  ContentView.swift
//  AlamofireSample
//
//  Created by Çağatay Yıldız on 11.12.2021.
//

import SwiftUI
import Alamofire

struct ContentView: View {


    var body: some View {
        
        HStack{
                 CategoryListScreen()
            //        AddCategoryScreen()
//                    SupplierListScreen()
//            ProductListScreen()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






//func getData(){
//
//    let request = AF.request("https://northwind.vercel.app/api/categories")
//
//    request.responseJSON { (data) in
//
//        print(data)
//
//    }
//
//}
//
//func getDataWithCodable(){
//
//    let request = AF.request("https://northwind.vercel.app/api/categories")
//
//    request.responseDecodable(of: [Category].self){ response in
//
//        print(response.value)
//
//
//    }
//
//}





//JSON => SWIFT OBJECT
