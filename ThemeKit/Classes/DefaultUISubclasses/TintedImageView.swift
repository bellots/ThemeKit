//
//  TintedImageView.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 06/02/2019.
//

import Foundation
import UIKit

@IBDesignable open class TintedImageView: UIImageView {
    
    enum Tint{
        case primary
        case secondary
        case accent
        case contrast
        case success
        case failure
        
        var color:UIColor?{
            switch self {
            case .primary:
                return PrimaryTintedImageView.appearance().backgroundColor
            case .secondary:
                return SecondaryTintedImageView.appearance().backgroundColor
            case .accent:
                return AccentTintedImageView.appearance().backgroundColor
            case .contrast:
                return  ContrastTintedImageView.appearance().backgroundColor
            case .success:
                return  SuccessTintedImageView.appearance().backgroundColor
            case .failure:
                return  FailureTintedImageView.appearance().backgroundColor
            }
        }
    }
    
    var tint:Tint?{
        didSet{
            guard let tint = tint else{
                return
            }
            customTintColor = tint.color
        }
    }
    
    @IBInspectable var customTintColor: UIColor?{
        didSet {
            setupImageView()
        }
    }
    
    var enabled:Bool = true{
        didSet{
            //            tintUIImageView = enabled ? Colors.ImageView.Tint.enabled : Colors.ImageView.Tint.disabled
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupImageView()
    }
    required override public init(frame: CGRect) {
        super.init(frame: frame)
        setupImageView()
    }
    override init(image: UIImage?) {
        super.init(image:image)
        setupImageView()
    }
    override open func prepareForInterfaceBuilder() {
        setupImageView()
    }
    
    func setupImageView(){
        self.image?.withRenderingMode(.alwaysTemplate)
        self.tintColor = self.customTintColor ?? .black
    }
    
}

