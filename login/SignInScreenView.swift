//
//  SignInScreenView.swift
//  login
//
//  Created by Fadi Salah on 01/09/2022.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email:String = ""
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom,30)
                    
                    SocialLoginButton(image: Image("apple"), text: Text("Sign In With Apple"))
                    
                    SocialLoginButton(image: Image("google"), text: Text("Sign In With Google")).foregroundColor(Color("PrimaryColor"))
                        .padding(.vertical)
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Work email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                        .padding(.vertical)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Email me a sign up link")
                    
                    
                    
                }
                Spacer()
                Divider()
                Spacer()
                Text("you're completely safe. ")
                Text("read our term & conditions.")
                    .foregroundColor(Color("PrimaryColor"))
                Spacer()
            }
            .padding()
        }
    }
}


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}

struct SocialLoginButton: View {
    var image:Image
    var text :Text
    var body: some View {
        HStack{
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
        .padding(.vertical)
    }
}
