//
//  ContentView.swift
//  Shared
//
//  Created by Adam on 30.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack(spacing: 0) {
                        // MARK: Smart Systems
                        HStack(spacing: 20) {
                            // MARK: Humidity Card
                            ClimateCard(iconName: "humidity.fill", index: "Inside humidity", measure: "49%")
                            
                            // MARK: Temperature Card
                            ClimateCard(iconName: "thermometer", index: "Outside temp.", measure: "-10°")
                        }
                    }
                }
                
            }
            .navigationTitle("Thermostat")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
