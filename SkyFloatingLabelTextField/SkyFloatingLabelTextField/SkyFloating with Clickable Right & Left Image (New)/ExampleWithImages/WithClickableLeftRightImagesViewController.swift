//
//  WithClickableLeftRightImagesViewController.swift
//  SkyFloatingLabelTextFieldExample
//
//  Created by areej sadaqa on 01/09/2021.
//  Copyright © 2021 Skyscanner. All rights reserved.
//

import UIKit

class WithClickableLeftRightImagesViewController: UIViewController {

    @IBOutlet weak var testTextField: SkyFloatingLabelTextField! {
        didSet {
            testTextField.leftImageViewTapped = { [weak self] in
                guard let _ = self else  {return}
                print("Left Image View Tapped")
            }
            
            testTextField.rightImageViewTapped = { [weak self] in
                guard let _ = self else  {return}
                print("Right Image View Tapped")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
