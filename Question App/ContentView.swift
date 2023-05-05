//
//  ContentView.swift
//  Question App
//
//  Created by Kiara on 5/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            GeometryReader { geo in
                ZStack {
                    Image("background").scaledToFill().edgesIgnoringSafeArea(.all).frame(width: geo.size.width, height: geo.size.height, alignment: .center).opacity(1.0)
                    
                    VStack(alignment: .center, spacing: 20.0) {
                        
                        NavigationLink(destination: question1()){
                            Text("Begin Q&A")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                        }
                        
                    }
                    
                    .padding()
                    .background(Rectangle() .foregroundColor(Color("Snow")))
                    .cornerRadius(15)
                    .shadow(radius: 15)
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
