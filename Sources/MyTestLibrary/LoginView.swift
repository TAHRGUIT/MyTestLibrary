//
//  LoginView.swift
//  MyTestLibrary
//
//  Created by user196402 on 7/8/21.
//

import SwiftUI

public struct LoginView: View {
    @ObservedObject var configHE = ConfigHelperEnvirenment()
    @State var email : String = ""
    @State var password : String = ""
    @State var isLogin : Bool = false
    
    public init(configHelper: ConfigHelper){
        configHE.configHelper = configHelper
    }
    
    public var body: some View {
//        NavigationView{
            
            ZStack{
                //               configHelper.appColor
                Color.init(hex: configHE.configHelper.appColor!)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    HStack(alignment: .center){
                        Text(configHE.configHelper.appName!)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.red)
                    
                    }
                    
                Spacer()
                
                    HStack{
                        Image(systemName: "person").foregroundColor(Color.red)
                        
                        TextField(configHE.configHelper.email!, text: $email)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.red)
                    }.padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                    
                    
                    HStack{
                        Image(systemName: "lock").foregroundColor(Color.red)
                        //Text(configHelper.appColor)
                        
                        SecureField(configHE.configHelper.password!, text: $password)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.red)
                    }.padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
                    
                    Button {
                        isLogin.toggle()
                    } label: {
                        Text("Login")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.red)
                    }

                    
                    Spacer()
                }
                
                if isLogin{
                    HomePage().environmentObject(configHE)
                }
            }
            
           
            
//            NavigationLink(destination: HomePage(), isActive: self.$isLogin, label: {
//                Text("Show Detail View")
//            })
//        }
        
    }
}
