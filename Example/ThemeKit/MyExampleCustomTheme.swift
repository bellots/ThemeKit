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
    
    static func instantiate<T: UIButton>(cls: [T.Type], inStackView stackView:UIStackView) {
        for classType in cls{
            let obj = classType.init(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
            obj.setTitle("\(classType)", for: .normal)
            stackView.addArrangedSubview(obj)
            obj.widthAnchor.constraint(equalToConstant: stackView.frame.width).isActive = true
            obj.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
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
        
        
        
        DefaultButton3.appearance().backgroundColor = UIColor.randomColor
        DefaultButton4.appearance().backgroundColor = UIColor.randomColor
        DefaultButton5.appearance().backgroundColor = UIColor.randomColor
        DefaultButton6.appearance().backgroundColor = UIColor.randomColor
        DefaultButton7.appearance().backgroundColor = UIColor.randomColor
        DefaultButton8.appearance().backgroundColor = UIColor.randomColor
        DefaultButton9.appearance().backgroundColor = UIColor.randomColor
        DefaultButton10.appearance().backgroundColor = UIColor.randomColor
        DefaultButton11.appearance().backgroundColor = UIColor.randomColor
        DefaultButton12.appearance().backgroundColor = UIColor.randomColor
        DefaultButton13.appearance().backgroundColor = UIColor.randomColor
        DefaultButton14.appearance().backgroundColor = UIColor.randomColor
        DefaultButton15.appearance().backgroundColor = UIColor.randomColor
        DefaultButton16.appearance().backgroundColor = UIColor.randomColor
        DefaultButton17.appearance().backgroundColor = UIColor.randomColor

        
        DefaultButton3.appearance().textColor = UIColor.randomColor
        DefaultButton4.appearance().textColor = UIColor.randomColor
        DefaultButton5.appearance().textColor = UIColor.randomColor
        DefaultButton6.appearance().textColor = UIColor.randomColor
        DefaultButton7.appearance().textColor = UIColor.randomColor
        DefaultButton8.appearance().textColor = UIColor.randomColor
        DefaultButton9.appearance().textColor = UIColor.randomColor
        DefaultButton10.appearance().textColor = UIColor.randomColor
        DefaultButton11.appearance().textColor = UIColor.randomColor
        DefaultButton12.appearance().textColor = UIColor.randomColor
        DefaultButton13.appearance().textColor = UIColor.randomColor
        DefaultButton14.appearance().textColor = UIColor.randomColor
        DefaultButton15.appearance().textColor = UIColor.randomColor
        DefaultButton16.appearance().textColor = UIColor.randomColor
        DefaultButton17.appearance().textColor = UIColor.randomColor

        
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

extension UIColor{
    static var randomColor: UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}
