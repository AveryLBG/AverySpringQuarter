//
//  ButtonView.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 7/30/25.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var name: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var Message: String = ""
    var body: some View {
        NavigationStack{
            VStack{
            
                Form {
                    TextField("Name", text: $name)
                    TextField("Last \nName", text: $lastName)
                    TextField("Email", text: $email)
                    TextField("Message", text: $Message )
                }
                
                NavigationLink { MisterCamSportsFavs()//
                } label: {
                    Text("Submit")
                        .font(.largeTitle)
                        .frame(width: 250, height: 50)
                }
                .padding(.top, 100)

            }// End of VStack
            
            .buttonStyle(.borderedProminent)
            .tint(.black)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Contact Us")
                        .font(.largeTitle)
                }
            }

           
        }// End of Nav Stack
    }
}

#Preview {
    ButtonView()
}
