//
//  ContentView.swift
//  About Me App
//
//  Created by Vasudha Ravivarma on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    
    var funFacts = ["I was born in canada","I hate tomatoes", "I've been dancing since I was 4", "I'm a dog person"]
    
    @State private var funFact = ""
    let color = Color(red: 0.941, green: 0.729, blue: 0.871)
    
    var body: some View {
        ZStack{
            color
                .ignoresSafeArea()
            
            VStack{
                Text("About Me!")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .fontWeight(.bold)
                Spacer().frame(height: 20)
                
                VStack(alignment: .center, spacing: 20.0) {
                    Text("Vasudha Ravivarma")
                        .font(.title)
                        
                    
                    Image("baby photo")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                    
                }
                .padding()
                .background(.white)
                .cornerRadius(25)
                .padding()
                
                Button("click for a fun fact!") {
                    let randomInt = Int.random(in: 0..<funFacts.count)
                    funFact = funFacts[randomInt]
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                Text(funFact).font(.headline).fontWeight(.bold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
