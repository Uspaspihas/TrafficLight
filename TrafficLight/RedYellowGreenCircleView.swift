//
//  CircleLightsView.swift
//  TrafficLight
//
//  Created by Илья Кареев on 08.09.2022.
//

import SwiftUI

struct RedYellowGreenCircleView: View {
    var redCirle: some View {
        getCircle()
    }
    var yellowCircle: some View {
        getCircle()
    }
    var greenCirle: some View {
        getCircle()
    }
    
    var body: some View {
        VStack {
            redCirle
            yellowCircle
            greenCirle
        }

    }
    func getCircle() -> some View {
        Circle()
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct CircleLightsView_Previews: PreviewProvider {
    static var previews: some View {
        RedYellowGreenCircleView()
    }
}
