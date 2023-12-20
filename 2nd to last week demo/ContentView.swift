//
//  ContentView.swift
//
//
//  Created by Jude Alayacyac on 11/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard: String = "card3"
    @State var cpuCard: String = "card5"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack {
            // Green Background
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            // Container for all the UI elements
            VStack {
                // Logo
                Image("logo")
                
                Spacer()
                
                //Card Container
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
//                // Button and text
//                Button ("Deal") {
//                    deal()
//                }
//                .font(.largeTitle)
//                .fontWeight(.black)
//                .foregroundColor(.white)
                
                // Button with Image
                Button(action: {
                    // TODO: Sample
                    deal()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    // Player Score Container
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        
                        //String Interpolation: Putting Integer inside a String
                        Text("\(playerScore)")
                            .font(.title)
                    }
                    
                    Spacer()
                    
                    // CPU Score Container
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        
                        // Casting: Converting Int into String
                        Text(String(cpuScore))
                            .font(.title)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
            }
            .padding()
        }
    }
    
    func deal() {
        // TODO: Randomize the card and give a score
        // 1. Randomize the Player Card and the CPU Card
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        // 2. Add condition to add score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        } else {
            playerScore = 0
            cpuScore = 0
        }
        
    }
}

#Preview {
    ContentView()
}
