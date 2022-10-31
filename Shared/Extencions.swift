//
//  Extencions.swift
//  mo (iOS)
//
//  Created by Adam on 31.10.2022.
//

import SwiftUI




extension LinearGradient {
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
    self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
}
}
