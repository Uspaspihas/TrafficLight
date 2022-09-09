//
//  ContentView.swift
//  TrafficLight
//
//  Created by Илья Кареев on 07.09.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var currentLight = CurrentLight.red
    
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                RedYellowGreenCircleView()
                    .redCirle.foregroundColor(.red.opacity(opacityRed))
                RedYellowGreenCircleView()
                    .yellowCircle.foregroundColor(.yellow.opacity(opacityYellow))
                RedYellowGreenCircleView()
                    .greenCirle.foregroundColor(.green.opacity(opacityGreen))
                Spacer()
                Button {
                    changeOpacity()
                } label: {
                    if opacityRed == 1 || opacityYellow == 1 || opacityGreen == 1 {
                        Text("Next")
                    } else {
                        Text("Start")
                    }
                }
                .frame(width: 140, height: 50)
                .font(.system(size: 30, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 6))
                .background(Color.blue).cornerRadius(15)
            }
        }
    }

    private func changeOpacity() {
            switch currentLight {
            case .red:
                opacityRed = 1
                opacityGreen = 0.3
                currentLight = .yellow
            case .yellow:
                opacityRed = 0.3
                opacityYellow = 1
                currentLight = .green
            case .green:
                opacityYellow = 0.3
                opacityGreen = 1
                currentLight = .red
            }
        }
    private enum CurrentLight {
        case red, yellow, green
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
