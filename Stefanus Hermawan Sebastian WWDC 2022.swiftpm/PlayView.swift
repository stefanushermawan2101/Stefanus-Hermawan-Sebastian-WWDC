//
//  File.swift
//  Stefanus Hermawan Sebastian WWDC 2022
//
//  Created by Stefanus Hermawan Sebastian on 19/04/22.
//

import SwiftUI

struct PlayView: View {
    @StateObject var viewRouter: ViewRouter
    @State private var playerHand = "hand1"
    @State private var winnerLabel = "tie"
    @State private var cpuHand = "hand1"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    var body: some View {
        VStack {
            Spacer()
            Image(winnerLabel).resizable().frame(width: 300.0, height: 125.0)
            HStack {
                Spacer()
                Image(playerHand).resizable().frame(width: 400.0, height: 400.0)
                Spacer()
                Image(cpuHand).resizable().frame(width: 400.0, height: 400.0)
                Spacer()
            }
            HStack{
                Spacer()
                VStack{
                    Image("you").resizable().frame(width: 150.0, height: 60.0)
                    Text(String(playerScore)).font(.system(size: 60))
                }
                Spacer()
                Spacer()
                Spacer()
                VStack{
                    Image("cpu").resizable().frame(width: 150.0, height: 60.0)
                    Text(String(cpuScore)).font(.system(size: 60))
                }
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                // Thumb
                Button {
                    let cpuRand = Int.random(in: 1...3)

                    //Update hand
                    playerHand = "hand1"
                    cpuHand = "hand"+String(cpuRand)

                    //Update the score
                    if(cpuRand == 2){
                        playerScore += 1
                        winnerLabel = "youWin"
                    }else if(cpuRand == 3){
                        cpuScore += 1
                        winnerLabel = "cpuWin"
                    }else {
                        winnerLabel = "tie"
                    }
                } label: {
                    Image("button1").resizable().frame(width: 200.0, height: 80.0)
                }
                Spacer()
                //Index Finger
                Button {
                    let cpuRand = Int.random(in: 1...3)

                    //Update hand
                    playerHand = "hand2"
                    cpuHand = "hand"+String(cpuRand)

                    //Update the score
                    if(cpuRand == 3){
                        playerScore += 1
                        winnerLabel = "youWin"
                    }else if(cpuRand == 1){
                        cpuScore += 1
                        winnerLabel = "cpuWin"
                    }else {
                        winnerLabel = "tie"
                    }
                } label: {
                    Image("button2").resizable().frame(width: 200.0, height: 80.0)
                }
                Spacer()
                //Little Finger
                Button {
                    let cpuRand = Int.random(in: 1...3)

                    //Update hand
                    playerHand = "hand3"
                    cpuHand = "hand"+String(cpuRand)

                    //Update the score
                    if(cpuRand == 1){
                        playerScore += 1
                        winnerLabel = "youWin"
                    }else if(cpuRand == 2){
                        cpuScore += 1
                        winnerLabel = "cpuWin"
                    }else {
                        winnerLabel = "tie"
                    }
                } label: {
                    Image("button3").resizable().frame(width: 200.0, height: 80.0)
                }
                Spacer()
            }
            Spacer()
            Button {
                viewRouter.currentPage = .page1
            } label: {
                Image("end").resizable().frame(width: 250.0, height: 80.0)
            }
            Spacer()
        }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView(viewRouter: ViewRouter())
    }
}
