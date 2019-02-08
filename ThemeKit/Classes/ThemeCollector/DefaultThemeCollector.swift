//
//  DefaultThemeCollector.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit


public enum DefaultThemeCollector:ThemeCollector{
    case standard
    
    public func setStyle() {
        ButtonTheme.setStyle(for: self)
        LabelTheme.setStyle(for: self)
        ViewTheme.setStyle(for: self)
    }
}

