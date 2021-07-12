//
//  HomePage.swift
//  MyTestLibrary
//
//  Created by user196402 on 7/12/21.
//

import SwiftUI

struct HomePage: View {
    
    @EnvironmentObject var configH : ConfigHelperEnvirenment
    
    var body: some View {
        ZStack{
            Color.init(hex: configH.configHelper.appColor!)
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
            }
            
        }
       
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
