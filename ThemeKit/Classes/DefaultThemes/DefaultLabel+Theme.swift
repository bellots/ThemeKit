//
//  DefaultLabel+Theme.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit

struct LabelTheme:Themeable{
    
    typealias T = DefaultThemeCollector
    
    static func defineStandardTheme() {
        DefaultLabel.appearance().customTextColor = Color.Label.Text.primary
        DefaultLabel.appearance().backgroundColor = Color.Label.Background.primary
    }
    
    static func setStyle(for theme: DefaultThemeCollector) {
        switch theme {
        case .standard:
            defineStandardTheme()
        }
    }
}
