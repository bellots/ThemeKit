//
//  DefaultButton.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit

@IBDesignable open class DefaultButton:UIButton{
    
    private var privateHorizontalPadding:CGFloat = 0
    private var privateVerticalPadding:CGFloat = 0
    
    @objc public dynamic var titleLabelFont: UIFont! {
        get { return self.titleLabel?.font }
        set { self.titleLabel?.font = newValue }
    }
    @objc public dynamic var textColor:UIColor?{
        get {
            return self.titleLabel?.textColor
        }
        set {
            self.setTitleColor(newValue, for: .normal)
        }
    }
    
    @objc public dynamic var horizontalPadding:CGFloat{
        get{
            return privateHorizontalPadding
        }
        set{
            privateHorizontalPadding = newValue
            let insets = UIEdgeInsets(top: privateVerticalPadding / 2, left: privateHorizontalPadding / 2, bottom: privateVerticalPadding / 2, right: privateHorizontalPadding / 2)
            self.titleLabel?.drawText(in: self.bounds.inset(by: insets))
            invalidateIntrinsicContentSize()

        }
    }
    
    @objc public dynamic var verticalPadding:CGFloat{
        get{
            return privateVerticalPadding
        }
        set{
            privateVerticalPadding = newValue
            let insets = UIEdgeInsets(top: privateVerticalPadding / 2, left: privateHorizontalPadding / 2, bottom: privateVerticalPadding / 2, right: privateHorizontalPadding / 2)
            self.titleLabel?.drawText(in: self.bounds.inset(by: insets))
            invalidateIntrinsicContentSize()
        }
    }
    
    
    open override var intrinsicContentSize: CGSize{
        get{
            var contentSize = super.intrinsicContentSize
            contentSize.height += verticalPadding
            contentSize.width += horizontalPadding
            return contentSize
        }
    }
}
