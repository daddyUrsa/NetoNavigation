//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Alexey Pavlov on 05.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let profileHeaderView = ProfileHeaderView()
    override func viewDidLoad() {
        super .viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.addSubview(profileHeaderView)
    }
    
    override func viewWillLayoutSubviews() {
        profileHeaderView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
    }
}
