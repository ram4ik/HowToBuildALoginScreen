//
//  ContentView.swift
//  HowToBuildALoginScreen
//
//  Created by ramil on 07.08.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Login / Signup")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding([.top, .bottom], 40)
                .shadow(radius: 10, x: 20, y: 10)
            
            Color.green
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10, x: 20, y: 10)
                .padding()
            
            VStack(alignment: .leading, spacing: 15) {
                TextField("Email", text: self.$email)
                    .padding()
                    .background(Color.themeTextField)
                    .cornerRadius(18)
                    .shadow(radius: 10, x: 20, y: 10)
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(Color.themeTextField)
                    .cornerRadius(18)
                    .shadow(radius: 10, x: 20, y: 10)
            }.padding([.leading, .trailing], 27.5)
            
            Button(action: {
                
            }, label: {
                Text("Log In")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(15)
                    .shadow(radius: 15, x: 20, y: 10)
            }).padding(.top, 50)
            
            Spacer()
            
            HStack(spacing: 0) {
                Text("Don't have an account?")
                Button(action: {
                    
                }, label: {
                    Text("Sign up")
                        .foregroundColor(.black)
                })
            }
        }.background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

extension Color {
    static var themeTextField: Color {
        return Color.white
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
