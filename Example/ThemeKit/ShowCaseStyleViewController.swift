//
//  ShowCaseStyleViewController.swift
//  ThemeKit_Example
//
//  Created by Andrea Bellotto on 12/02/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class ShowCaseStyleViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MyCustomThemeCollector.instantiate(cls:
            [
                DefaultButton3.self,
                DefaultButton4.self,
                DefaultButton5.self,
                DefaultButton6.self,
                DefaultButton7.self,
                DefaultButton8.self,
                DefaultButton9.self,
                DefaultButton10.self,
                DefaultButton11.self,
                DefaultButton12.self,
                DefaultButton13.self,
                DefaultButton14.self,
                DefaultButton15.self,
                DefaultButton16.self,
                DefaultButton17.self
            ], inStackView: stackView)
        self.view.layoutSubviews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
