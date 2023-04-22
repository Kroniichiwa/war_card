//
//  ContentView.swift
//  war_card
//
//  Created by Kritsadalakhasont on 9/3/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card3"
    @State var cpuCard = "card8"
    
    @State var playerScore = 0
    @State var cpuSorce = 0
    var body: some View {
        ZStack {
            
            Image("background-plain")
                .resizable()
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
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuSorce))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
            }
        }
        
    }
    func deal(){
       //random number
        var playerRandom = Int.random(in: 2...14)
        var cpuRandom = Int.random(in: 2...14)
        
        //random card Image
        playerCard = "card" + String(playerRandom)
        cpuCard = "card" + String(cpuRandom)
        
        //add Score
        if playerRandom > cpuRandom {
            playerScore += 1
        }
        else if cpuRandom > playerRandom {
            cpuSorce += 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
