//
//  question3.swift
//  Question App
//
//  Created by Kiara on 5/5/23.
//

import SwiftUI

struct question3: View {
    @State private var placeholder = ""
    
    var body: some View {
        
        NavigationStack{
            
            GeometryReader { geo in
                ZStack {
                    Image("background").scaledToFill().edgesIgnoringSafeArea(.all).frame(width: geo.size.width, height: geo.size.height, alignment: .center).opacity(1.0)
                    
                    VStack(alignment: .center, spacing: 20.0) {
                        Text("What type of person are you?")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Button("Sports Person") {
                            placeholder = "🏐"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Green"))
                        
                        Button("Art Person") {
                            placeholder = "🎨"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Blue"))
                        
                        Button("Suprise Me!") {
                            placeholder = "🐈‍⬛"
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
            }
        }
    }
}

struct question3_Previews: PreviewProvider {
    static var previews: some View {
        question3()
    }
}
