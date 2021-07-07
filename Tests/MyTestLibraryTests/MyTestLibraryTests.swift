    import XCTest
    import SwiftUI
    @testable import MyTestLibrary

    final class MyTestLibraryTests: XCTestCase {

        @State var fname: String
        
        public init(fname: String){
            self.fname = fname
            super.init()
        }
        
        func testExample() {
            var body: some View {
                ZStack{
                    VStack{
                        Text("First Name")
                            .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        MyTestLibrary.mainTextField(placeholder : "Testing", text: $fname)
                        
                        Button("Ok"){
                            
                        }
                    }.padding()
                }
            }
            
            
        }
    }
