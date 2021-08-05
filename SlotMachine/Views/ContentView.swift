//
//  ContentView.swift
//  SlotMachine
//
//  Created by Rami Ounifi on 5/8/2021.
//

import SwiftUI
// MARK: - Properties


// MARK: - Body
struct ContentView: View {
    var body: some View {
        ZStack {
            // MARK: - Background
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // MARK: - interface
            VStack (alignment: .center, spacing: 5){
                
                // MARK: - Header
                
               LogoView()
                .padding()
                Spacer()
                // MARK: - Score
                HStack {
                    HStack {
                        Text("Your\nCoins".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.trailing)
                        Text("100")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                    }
                    .modifier(ScoreContainerModifier())
                    Spacer()
                    HStack {
                        Text("200")
                            .scoreNumberStyle()
                            .modifier(ScoreNumberModifier())
                        Text("Hight\nScore".uppercased())
                            .scoreLabelStyle()
                            .multilineTextAlignment(.leading)
               
                    }
                    .modifier(ScoreContainerModifier())
                }
                
                // MARK: - Slot Machine
                VStack(alignment: .center, spacing: 0) {
                    // MARK: - Reel #1
                    ZStack {
                        ReelView()
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ImageModifier())
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        
                    
                    // MARK: - Reel #2
                        ZStack {
                            ReelView()
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ImageModifier())
                        }
                        Spacer()
                    // MARK: - Reel #3
                        ZStack {
                            ReelView()
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ImageModifier())
                        }
                }
                    .frame(maxWidth: 720)
                    // MARK: - Spin button
                    
                    Button(action: {
                        print("Spin the reels")
                    }) {
                        Image("gfx-spin")
                            .renderingMode(.original)
                            .resizable()
                            .modifier(ImageModifier())
                    }
                }//: Slot machine
                .layoutPriority(2)
                // MARK: - Footer
            Spacer()
            }
            // MARK: - Buttons
                    .overlay(
                    // reset
                        Button(action: {
                            print("reset the game")
                        }){
                           Image(systemName: "arrow.2.circlepath.circle")
                        }
                        .modifier(ButtonModifier()),
                         alignment: .topLeading
                        )
            .overlay(
            // reset
                Button(action: {
                    print("info view")
                }){
                   Image(systemName: "info.circle")
                }
                .modifier(ButtonModifier()),
                alignment: .topTrailing
                )
            .padding()
            .frame(maxWidth: 720)
            
            // MARK: - Popup
        }//: ZStack
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
