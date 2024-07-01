//
//  ContentView.swift
//  Card Game
//
//  Created by Shreyas Karbar on 29/06/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    // @State means that is variable is important for diaplay
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View{
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                
                
            }
        }
        
        
    }
    
    func deal(){
        // Randomize the players card
        let playerCard_value = Int.random(in: 2...14)
        // Add strings to generate card for player from assests
        playerCard = "card" + String(playerCard_value)
        
        // Randomize the cpu card
        let cpuCard_value = Int.random(in: 2...14)
        // Add strings to generate card for cpu from assests
        cpuCard = "card" + String(cpuCard_value)
        
        // Update the score
        if playerCard_value > cpuCard_value{
            playerScore += 1
        }
        else if playerCard_value < cpuCard_value{
            cpuScore += 1
        }
        // If both get same card
        else{
            playerScore += 1
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
