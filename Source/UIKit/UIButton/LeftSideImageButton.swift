//
//  LeftSideImageButton.swift
//  AlepUI
//
//  Created by Ahmad Khawatmi on 11.03.20.
//

import UIKit

public class LeftSideImageButton: UIButton {
    
    func updateUI(backgroundColor: UIColor = .clear, title: String, titleColor: UIColor = .black, fontSize: CGFloat, imageName: String) {
        buttonLeftImage.makeAspectFitImage(imageName: imageName)
        self.makeButton(title: title, titleColor: titleColor, backgroundColor: backgroundColor, fontName: UIFont.thin, fontSize: fontSize)
    }
//==========================================================================================
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//==========================================================================================
    private func setupView() {
        
        let buttonLeftImage_height_width = self.frame.height / 1.4
        let buttonLeftImage_top_constant = self.frame.height / 2 - buttonLeftImage_height_width / 2
        let buttonLeftImage_left_constant = self.frame.width / 20
        
        addSubview(buttonLeftImage)
                
        _ = buttonLeftImage.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: buttonLeftImage_top_constant, leftConstant: buttonLeftImage_left_constant, bottomConstant: 0, rightConstant: 0, widthConstant: buttonLeftImage_height_width, heightConstant: buttonLeftImage_height_width)
    }
//==========================================================================================
    private let buttonLeftImage: UIImageView = {
        let img = UIImageView()
        return img
    }()
//==========================================================================================
}
