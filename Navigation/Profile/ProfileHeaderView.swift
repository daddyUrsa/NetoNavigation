//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Alexey Pavlov on 05.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "alexey")
        image.layer.cornerRadius = 75
        image.clipsToBounds = true
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = .black
        label.text = "Alexey Pavlov"
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .gray
        label.text = "Waiting for something..."
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let inputStatus: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        textField.textColor = .black
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    let showStatusButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonPressed() {
        descriptionLabel.text = inputStatus.text ?? ""
    }
    
    func setupViews() {
        addSubview(avatarImage)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(showStatusButton)
        addSubview(inputStatus)
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            avatarImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            avatarImage.widthAnchor.constraint(equalToConstant: 150),
            avatarImage.heightAnchor.constraint(equalToConstant: 150),
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 27),
            showStatusButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            showStatusButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            showStatusButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 16),
            showStatusButton.heightAnchor.constraint(equalToConstant: 50),
            inputStatus.bottomAnchor.constraint(equalTo: showStatusButton.topAnchor, constant: -34),
            inputStatus.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 27),
            inputStatus.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            inputStatus.heightAnchor.constraint(equalToConstant: 40),
            descriptionLabel.bottomAnchor.constraint(equalTo: inputStatus.topAnchor, constant: -16),
            descriptionLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 27)
        ])
        
    }
}
