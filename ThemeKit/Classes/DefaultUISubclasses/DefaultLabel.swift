//
//  DefaultLabel.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit


@IBDesignable open class DefaultLabel:UILabel{
    
    @objc public dynamic var customTextColor:UIColor{
        get{
            return self.textColor
        }
        set{
            self.textColor = newValue
        }
    }
    @objc public dynamic var customFont:UIFont{
        get{
            return self.font
        }
        set{
            self.font = newValue
        }
    }
    @objc public dynamic var customBackgroundColor:UIColor?{
        get{
            return self.backgroundColor
        }
        set{
            self.backgroundColor = newValue
        }
    }
    
    /***
     variables used to add padding between text and border
     */
    
    @objc public dynamic var leftInset: CGFloat {
        get{
            return privateLeftInset
        }
        set{
            privateLeftInset = newValue
            let insets = UIEdgeInsets(top: privateTopInset, left: privateLeftInset, bottom: privateBottomInset, right: privateRightInset)
            super.drawText(in: self.bounds.inset(by: insets))
            invalidateIntrinsicContentSize()
        }
    }
    @objc public dynamic var rightInset: CGFloat {
        get{
            return privateRightInset
        }
        set{
            privateRightInset = newValue
            let insets = UIEdgeInsets(top: privateTopInset, left: privateLeftInset, bottom: privateBottomInset, right: privateRightInset)
            super.drawText(in: self.bounds.inset(by: insets))
            invalidateIntrinsicContentSize()
        }
    }
    @objc public dynamic var topInset: CGFloat {
        get{
            return privateTopInset
        }
        set{
            privateTopInset = newValue
            let insets = UIEdgeInsets(top: privateTopInset, left: privateLeftInset, bottom: privateBottomInset, right: privateRightInset)
            super.drawText(in: self.bounds.inset(by: insets))
            invalidateIntrinsicContentSize()
        }
    }
    @objc public dynamic var bottomInset: CGFloat {
        get{
            return privateBottomInset
        }
        set{
            privateBottomInset = newValue
            let insets = UIEdgeInsets(top: privateTopInset, left: privateLeftInset, bottom: privateBottomInset, right: privateRightInset)
            super.drawText(in: self.bounds.inset(by: insets))
            invalidateIntrinsicContentSize()
        }
    }
    
    private var privateLeftInset:CGFloat = 0
    private var privateRightInset:CGFloat = 0
    private var privateTopInset:CGFloat = 0
    private var privateBottomInset:CGFloat = 0
    
    override open var intrinsicContentSize: CGSize {
        get {
            var contentSize = super.intrinsicContentSize
            contentSize.height += privateTopInset + privateBottomInset
            contentSize.width += privateLeftInset + privateRightInset
            return contentSize
        }
    }

}
