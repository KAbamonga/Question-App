//
//  question1.swift
//  Question App
//
//  Created by Kiara on 5/5/23.
//

import SwiftUI

struct question1: View {
    @State private var placeholder = ""
    
    var body: some View {
        
        NavigationStack{
            
            GeometryReader { geo in
                ZStack {
                    Image("background").scaledToFill().edgesIgnoringSafeArea(.all).frame(width: geo.size.width, height: geo.size.height, alignment: .center).opacity(1.0)
                    
                    VStack(alignment: .center, spacing: 20.0) {
                        Text("How are you feeling?")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Button("Happy") {
                            placeholder = "😁"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Green"))
                        
                        Button("Sad") {
                            placeholder = "🙁"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Blue"))
                        
                        Button("Tired") {
                            placeholder = "😴"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Yellow"))
                        
                        Text(placeholder)
                            .font(.system(size: 100))
                    }
                    
                    .padding()
                    .background(Rectangle() .foregroundColor(Color("Snow")))
                    .cornerRadius(15)
                    .shadow(radius: 38)
                    .padding()
                }
                
                .toolbar{
                    ToolbarItemGroup(placement: .status) {
                        NavigationLink(destination: question2()){
                            Text("Next Question!")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
            }
        }
    }
}

struct question1_Previews: PreviewProvider {
    static var previews: some View {
        question1()
    }
}
