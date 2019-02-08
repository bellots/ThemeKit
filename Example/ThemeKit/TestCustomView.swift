//
//  TestCustomView.swift
//  ThemeKit_Example
//
//  Created by Andrea Bellotto on 07/02/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

@IBDesignable class TestCustomView: UIView {


    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
}
