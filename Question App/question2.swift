//
//  question2.swift
//  Question App
//
//  Created by Kiara on 5/5/23.
//

import SwiftUI

struct question2: View {
    @State private var placeholder = ""
    
    var body: some View {
        
        NavigationStack{
            
            GeometryReader { geo in
                ZStack {
                    Image("background").scaledToFill().edgesIgnoringSafeArea(.all).frame(width: geo.size.width, height: geo.size.height, alignment: .center).opacity(1.0)
                    
                    VStack(alignment: .center, spacing: 20.0) {
                        Text("What element are you?")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Button("Fire") {
                            placeholder = "🔥"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Green"))
                        
                        Button("Water") {
                            placeholder = "🌊"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Blue"))
                        
                        Button("Earth") {
                            placeholder = "🪨"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Yellow"))
                        
                        Button("Air") {
                            placeholder = "💨"
                        }
                        .font(.title2)
                        .buttonStyle(.borderedProminent)
                        .tint(Color("Olive"))
                        
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
                        NavigationLink(destination: question3()){
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

struct question2_Previews: PreviewProvider {
    static var previews: some View {
        question2()
    }
}
