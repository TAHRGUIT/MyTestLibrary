import SwiftUI

    public struct MainTextField : View{
        @ObservedObject var configHE = ConfigHelperEnvirenment()

        
        @State var text : String = ""
        public var configHelper : ConfigHelper
        
        public init(configHelper: ConfigHelper){
            self.configHelper = configHelper
            configHE.configHelper = configHelper
        }
        
        public var body: some View{
            ZStack{
//               configHelper.appColor
                Color.init(hex: configHelper.appColor!)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image(systemName: "person").foregroundColor(Color.red)
                    //Text(configHelper.appColor)
                    TextField(configHelper.appName!, text: $text)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color.red)
                }.padding()
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
            }
            
        }
    }

