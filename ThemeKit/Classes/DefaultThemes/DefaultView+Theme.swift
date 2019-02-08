//
//  DefaultView+Theme.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit


struct ViewTheme:Themeable{
    
    typealias T = DefaultThemeCollector
    
    static func defineStandardTheme() {
        DefaultView.appearance().backgroundColor = UIColor.brown
    }
    
    static func setStyle(for theme: DefaultThemeCollector) {
        switch theme {
        case .standard:
            defineStandardTheme()
        }
    }
}
