//
//  ThemeCollector.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 05/02/2019.
//

import Foundation


/// Protocols with required theme functions
public protocol ThemeCollector{
    func setStyle()
    static func updateLayout(with:Self)
}

public protocol Themeable{
    associatedtype T:ThemeCollector
    static func setStyle(for theme:T)
    static func defineStandardTheme()
}


public extension ThemeCollector{
    public static func updateLayout(with theme:Self){
        theme.setStyle()
        for window in UIApplication.shared.windows {
            for view in window.subviews {
                view.removeFromSuperview()
                window.addSubview(view)
            }
        }
    }
}


