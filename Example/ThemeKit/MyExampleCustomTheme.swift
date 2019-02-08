//
//  MyExampleCustomTheme.swift
//  ThemeKit_Example
//
//  Created by Andrea Bellotto on 06/02/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import ThemeKit


enum MyCustomThemeCollector:ThemeCollector{
    case myCustom
    case dark
    
    func setStyle() {
        MyCustomThemeable.setStyle(for: self)
    }
}

protocol MyCustomThemeableProtocol:Themeable{
    static func defineDarkTheme()
}

struct MyCustomThemeable:MyCustomThemeableProtocol{
    
    typealias T = MyCustomThemeCollector

    static func setStyle(for theme: MyCustomThemeCollector) {
        switch theme {
        case .myCustom:
            defineStandardTheme()
        case .dark:
            defineDarkTheme()
        }
    }
}


extension MyCustomThemeable{
    static func defineStandardTheme() {
        
        //VIEWS
        DefaultView.appearance().cornerRadius = 20
        DefaultView.appearance().backgroundColor = .white
        
        //BUTTONS
        DefaultButton.appearance().backgroundColor = UIColor.hexStringToUIColor(hex: "#55efc4")
        DefaultButton.appearance().titleLabelFont = UIFont.boldSystemFont(ofSize: 30)
        DefaultButton.appearance().textColor = UIColor.black
        DefaultButton.appearance().horizontalPadding = 30
        
        //LABELS
        MyLabel.appearance().customTextColor = .black
        MyLabel.appearance().customFont = UIFont.systemFont(ofSize: 25)
        SubtitleLabel.appearance().customTextColor = UIColor.hexStringToUIColor(hex: "#00cec9")
        SubtitleLabel.appearance().customFont = UIFont.systemFont(ofSize: 25)
    }
}


extension MyCustomThemeable{
    static func defineDarkTheme() {

        //VIEWS
        DefaultView.appearance().cornerRadius = 20
        DefaultView.appearance().backgroundColor = .black
        
        //BUTTONS
        DefaultButton.appearance().backgroundColor = .white
        DefaultButton.appearance().titleLabelFont = UIFont.boldSystemFont(ofSize: 30)
        DefaultButton.appearance().textColor = UIColor.black
        DefaultButton.appearance().horizontalPadding = 30
        
        //LABELS
        MyLabel.appearance().customTextColor = .white
        MyLabel.appearance().customFont = UIFont.boldSystemFont(ofSize: 30)
        SubtitleLabel.appearance().customTextColor = UIColor.hexStringToUIColor(hex: "#dff9fb")
        SubtitleLabel.appearance().customFont = UIFont.systemFont(ofSize: 30)

    }
}
extension UIView{
    open override func prepareForInterfaceBuilder() {
        MyCustomThemeCollector.myCustom.setStyle()
    }
}

