//
//  LogInView.swift
//  IA3
//
//  Created by Ashton Price on 12/5/2023.
//


import SwiftUI

struct LogInView: View {
    // @EnvironmentObject var myData:MyDataModel
    // @State var me:Worker = MyDataModel().workers.first!
    
    //these store what is entered in the textfields
    @State var enteredUsername = ""
    @State var enteredPassword = ""
    
    //if isLoggedIn == true go to next interface
    @State var isLoggedIn = false
    
    //alert saying the entered username/password is incorrect
    @State var showPasswordAlert = false
    
    //stores the login information
    @State var info = informationList().list
    
    var body: some View {
        VStack(spacing:16){
            
            //adds top school logo
            Image("Logo")
                .resizable()
                .padding()
                .scaledToFit()
                .scaleEffect(0.7)
            
            Spacer()
            
            VStack {
                
                //Log in title
            Text("Log In")
                .font(.largeTitle)
                .padding(.top)
                .font(.largeTitle)
            
                //textfield for the username
                TextField("Username", text:$enteredUsername)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                //textfield for the password
                SecureField("Password", text:$enteredPassword)
                    .textFieldStyle(.roundedBorder)
                    .padding([.leading, .bottom, .trailing])
                
                //button which checks if user credentials are valid and brings user to next interface
                Button(action: {}, label: {
                    Text("SIGN IN")
                        .foregroundColor(.white)
                        .frame(width: 200, height: 40)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding(.bottom)
                })
            }
            //styles the login section
            .background(Color.gray.opacity(0.2))
            .cornerRadius(25)
            .padding()
            .frame(width: 600.0, height: 250.0)
            
            Spacer()
            
            //school banner
            Image("banner")
                .resizable()
                .scaledToFit()

                           
        }.edgesIgnoringSafeArea(.all)
        
        
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
