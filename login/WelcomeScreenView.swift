//
//  WelcomeScreenView.swift
//  login
//
//  Created by Fadi Salah on 01/09/2022.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image("onboard")
                    Spacer()
                    PrimaryButton(title: "Get Started")
                    
                    NavigationLink(
                        destination: SignInScreenView(),
                        label: {
                            Text("Sign in")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("PrimaryColor"))
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                        .padding(.vertical)
                        })
                    HStack{
                        Text("New around here ? ")
                        Text(" Sign in")
                            .foregroundColor(Color("PrimaryColor"))
                        
                    }
                    
                }
                .padding()
                
            }
        }
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
