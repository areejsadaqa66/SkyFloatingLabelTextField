//
//  SkyFloatingLabelTextFieldWithLeftRightIcons.swift
//  SkyFloatingLabelTextField
//
//  Created by areej sadaqa on 01/09/2021.
//  Copyright © 2021 Skyscanner. All rights reserved.
//

import Foundation
import UIKit

extension SkyFloatingLabelTextField {
    ///
    ///  CustomTextField.swift
    ///  eCommerceApp
    ///  Created by areej sadaqa on 13/04/2021.

    //MARK: Left Image Handling
    open func  updateLeftView() {
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: leftImgaeWidth, height: leftImageHeight))
            imageView.image = image
            
            var width = leftPadding + leftImgaeWidth + placeholderXPadding
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                width = width + 1
            }
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: leftImageHeight))
            view.addSubview(imageView)
            
            leftView = view
            
            ///Gesture for the imageView
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(leftImageTapped(tapGestureRecognizer:)))
            imageView.isUserInteractionEnabled = true
            imageView.addGestureRecognizer(tapGestureRecognizer)
            
        } else {
            leftViewMode = .never
        }
    }
    
    //MARK: Right Image Handling
    open func  updateRightView() {
        if let image = rightImage {
            rightViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: rightPading, y: 0, width: rightImageWidth, height: rightImageHeight))
            imageView.image = image
            
            //var width = rightPading + rightImageWidth + placeholderXPadding
            var width = rightImageWidth
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                width = width + 1
            }
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: rightImageHeight))
            view.addSubview(imageView)
            
            rightView = view
            //Handle right image view tapped
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(rightImageTapped(tapGestureRecognizer:)))
            imageView.isUserInteractionEnabled = true
            imageView.addGestureRecognizer(tapGestureRecognizer)
        } else {
            rightViewMode = .never
        }
        
    }
    
    //MARK: functions
    internal func setLeftImage(leftImage: UIImage) {
        self.leftImage = leftImage
    }
    
    internal func lineViewIsHidden(_ isHidden: Bool) {
        self.lineView.isHidden = isHidden
    }
    
    internal func setRightImage(rightImage: UIImage) {
        self.rightImage = rightImage
    }
    
    //MARK: Left and Right Images Actions
    @objc func leftImageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        //let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        // Your action
        //print("left imageview tapped")
        leftImageViewTapped?()
    }
    
    @objc func rightImageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        //print("Right ImageViewTapped")
        rightImageViewTapped?()
    }
    
}
