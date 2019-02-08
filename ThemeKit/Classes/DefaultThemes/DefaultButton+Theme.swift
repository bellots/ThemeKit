//
//  DefaultButton+Theme.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit

public struct ButtonTheme:Themeable{
    public typealias T = DefaultThemeCollector
    
    public static func defineStandardTheme() {
        DefaultButton.appearance().backgroundColor = UIColor.purple
    }
    public static func setStyle(for theme: DefaultThemeCollector) {
        switch theme {
        case .standard:
            defineStandardTheme()
        }
    }
}
