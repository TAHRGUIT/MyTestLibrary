import SwiftUI

public struct MyTestLibrary {
    public struct mainTextField : View{
        @State var placeholder : String
        @Binding var text : String
        
        public init(placeholder: String, text: Binding<String>){
            self._placeholder = State(initialValue: placeholder)
            self._text = text
        }
        
        public var body: some View{
            HStack{
                Image(systemName: "person").foregroundColor(Color.red)
                TextField(placeholder, text: $text)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(Color.red)
            }.padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2))
        }
    }
}
