//
//  ViewController.swift
//  ThemeKit
//
//  Created by Andrea Bellotto on 02/04/2019.
//  Copyright (c) 2019 Andrea Bellotto. All rights reserved.
//

import UIKit
import ThemeKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: MyLabel!
    @IBOutlet weak var subtitleLabel: SubtitleLabel!
    
    var currentTheme:MyCustomThemeCollector!{
        didSet{
            switch currentTheme! {
            case .myCustom:
                descriptionLabel.text = "The current theme is the light one, \nbut if you press the button above!\n⬇⬇⬇"
                subtitleLabel.text = "Everything is managed through UIAppearance, without writing any color or font inside class declaration or inside ViewController."
            case .dark:
                descriptionLabel.text = "Voilà, now you have a dark theme!!! \nPress it another time to come back to light theme!"
                subtitleLabel.text = "Like CSS, you create a subclass system, and in UIStoryboard you assign your preferred class to your UI Element."
            }

            UIView.animate(withDuration: 0.3) {
                MyCustomThemeCollector.updateLayout(with: self.currentTheme!)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
            self.currentTheme = .myCustom
            return
        }
        self.currentTheme = appDelegate.currentTheme
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeTheme(_ sender: Any) {
        switch currentTheme! {
        case .dark:
            currentTheme = .myCustom
        case .myCustom:
            currentTheme = .dark
        }
    }
}

@IBDesignable class MyLabel:DefaultLabel{}
@IBDesignable class SubtitleLabel:DefaultLabel{}

@IBDesignable class CircleButton:DefaultButton{
    override func layoutSubviews() {
        super.layoutSubviews()
        self.cornerRadius = self.frame.size.height / 2
    }
}
