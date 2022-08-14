//
//  ContentView.swift
//  War UI Demo
//
//  Created by Gabriel Persaud on 8/13/22.
//

import SwiftUI

struct ContentView: View {
   @State private var playerCard = "back"
   @State private var cpuCard = "back"
   @State private var playerScore = 0
   @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
            
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button (action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + (String(playerRand))
                    cpuCard = "card" + (String(cpuRand))
                    
                    if playerRand == cpuRand {
                        playerScore = playerScore
                        cpuScore = cpuScore
                    }
                    else if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else {
                        cpuScore += 1
                    }
                    
                   
                }) {
                    Image("dealbutton")
                }
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                    Text("Player")
                        .font(.system(size: 30))
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom,
                                 1.0)
                    Text(String(playerScore))
                        .font(.system(size: 50))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        
                  
                    }
                    Spacer()
                    VStack {
                    Text("CPU")
                        .font(.system(size: 30))
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom,
                                 1.0)
                    Text(String(cpuScore))
                        .font(.system(size: 50))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    }
                    Spacer()
                }
               Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
