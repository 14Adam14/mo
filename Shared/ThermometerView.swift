//
//  ThermometerView.swift
//  mo (iOS)
//
//  Created by Adam on 31.10.2022.
//

import SwiftUI

enum Status: String {
    case heating = "HEATING"
    case cooling = "COOLING"
    case reaching = "REACHING"
}

struct ThermometerView: View {
    private let ringSize: CGFloat = 220
    
    @State private var ringValue: CGFloat = 0.5
    @State private var degrees: CGFloat = 36
    
    var body: some View {
        ZStack {
            // MARK: Thermometer Scale
            ThermometerScaleView()
            
            // MARK: Placeholder
            ThermometerPlaceholderView()
            
            
            
            // MARK: Temperature ring
            Circle()
                .inset(by: 5)
                .trim(from: 0.099, to: min(ringValue, 0.75))
                .stroke(LinearGradient([Color("temperature ring 1"), Color("temperature ring 2")]), style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .frame(width: ringSize, height: ringSize)
                .rotationEffect(.degrees(90))
                .animation(.linear(duration: 1), value: ringValue)
            
            
            // MARK: Thermometer dial
            ThermometerDialView(degrees: degrees)
            
            // MARK: Thermometer summary
            ThermometerSummaryView(status: .heating, showStatus: true, temperature: 22)
            
            
        }
    }
}

struct ThermometerView_Previews: PreviewProvider {
    static var previews: some View {
        ThermometerView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
    }
}
