import SwiftUI

    public struct MainTextField : View{
        @State var text : String = ""
        var configHelper : ConfigHelper
        
        public init(configHelper: ConfigHelper){
            self.configHelper = configHelper
        }
        
        public var body: some View{
            HStack{
                Image(systemName: "person").foregroundColor(Color.red)
                Text(configHelper.appName!)
                TextField(configHelper.appName!, text: $text)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(Color.red)
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
        }
    }

