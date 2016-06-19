//
//  ViewController.swift
//  JKTextAttachmentDemo
//
//  Created by Jayesh Kawli Backup on 6/18/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        
        let iconsSize = CGRect(x: 0, y: -5, width: 30, height: 30)
        let emojisCollection = [UIImage(named: "love"), UIImage(named: "jeans"), UIImage(named: "fire"), UIImage(named: "dash"), UIImage(named: "baby")]
        
        self.view.addSubview(label)
        
        let attributedString = NSMutableAttributedString(string: "Your ")
        
        let loveAttachment = NSTextAttachment()
        loveAttachment.image = emojisCollection[0]
        loveAttachment.bounds = iconsSize
        attributedString.appendAttributedString(NSAttributedString(attachment: loveAttachment))
        
        attributedString.appendAttributedString(NSAttributedString(string: " was holdin'\n"))
        attributedString.appendAttributedString(NSAttributedString(string: "Ripped "))
        
        let jeansAttachment = NSTextAttachment()
        jeansAttachment.image = emojisCollection[1]
        jeansAttachment.bounds = iconsSize
        attributedString.appendAttributedString(NSAttributedString(attachment: jeansAttachment))
        
        attributedString.appendAttributedString(NSAttributedString(string: " ,\n"))
        attributedString.appendAttributedString(NSAttributedString(string: "skin was showin'\n"))
        
        let fireAttachment = NSTextAttachment()
        fireAttachment.image = emojisCollection[2]
        fireAttachment.bounds = iconsSize
        attributedString.appendAttributedString(NSAttributedString(attachment: fireAttachment))
        
        attributedString.appendAttributedString(NSAttributedString(string: " night, wind was "))
        
        let dashAttachment = NSTextAttachment()
        dashAttachment.image = emojisCollection[3]
        dashAttachment.bounds = iconsSize
        attributedString.appendAttributedString(NSAttributedString(attachment: dashAttachment))
        
        attributedString.appendAttributedString(NSAttributedString(string: "\nWhere you think\n"))
        attributedString.appendAttributedString(NSAttributedString(string: "you're going, "))
        
        let babyAttachment = NSTextAttachment()
        babyAttachment.image = emojisCollection[4]
        babyAttachment.bounds = iconsSize
        attributedString.appendAttributedString(NSAttributedString(attachment: babyAttachment))
        
        attributedString.appendAttributedString(NSAttributedString(string: " ?"))
    
        label.attributedText = attributedString
        label.font = UIFont.systemFontOfSize(22)
        let views = ["label": label]
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-[label]-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-44-[label]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views))
    }
}