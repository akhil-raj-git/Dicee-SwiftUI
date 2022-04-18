//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Akhil Raj on 4/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(num: leftDiceNumber)
                    DiceView(num: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll").font(.system(size: 40)).fontWeight(.heavy).foregroundColor(.white).padding()
                }.background(Color.red)
                Spacer()
            }
        }
    }
}

struct DiceView: View {
    let num: Int
    
    var body: some View {
        Image("dice\(num)").resizable().aspectRatio(1, contentMode: .fit).padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


