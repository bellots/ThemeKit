//
//  UIView+Extensions.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 07/02/2019.
//

import Foundation
import UIKit

public extension UIView{
    public class var nameIdentifier:String {
        return String(describing: self)
    }
    
    // MARK: - used in custom xib.
    /*
     If you create an IBDesignable UIView Subclass, if you call setup() in
     init with decoder and init with frame, it shows your custom UIView directly
     in your storyboard
     */
    
    public func loadViewFromNib() -> UIView
    {
        let bundle = Bundle(for:type(of: self))
        let nib = UINib(nibName: type(of: self).nameIdentifier, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
    @objc public func setupView()
    {
        let view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            if let layerColor = layer.borderColor {
                return UIColor(cgColor: layerColor)
            } else {
                return UIColor(white: 0, alpha: 0);
            }
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    public func fade(withAnimation animate:Bool){
        if animate{
            self.isHidden = false
            UIView.animate(withDuration: 0.3, animations: {
                if self.alpha == 0{
                    self.alpha = 1
                }
                else{
                    self.alpha = 0
                }
                
            }, completion: { (success) in
                if success{
                    if self.alpha == 0{
                        self.isHidden = true
                    }
                }
            })
        }
        else{
            if self.alpha == 0{
                self.isHidden = false
                self.alpha = 1
                
            }
            else{
                self.alpha = 0
                self.isHidden = true
                
            }
        }
    }
    
}
