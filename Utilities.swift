//
//  Utilities.swift
//  GoalsList
//
//  Created by Develop on 12/28/21.
//  Copyright © 2021 Develop. All rights reserved.
//

import Foundation
import  UIKit

class Utilities :UIViewController {
    
    // create Any View Like This Code
    
    private let addButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.setImage(UIImage(named: "8"), for: .normal)
        //button.backgroundColor = .black
        button.setBackgroundImage(UIImage(named: "8"), for: .normal)
        button.tintColor = .link
        //     button.addTarget(self, action: #selector(addBtnClicked( _ :)), for: .touchUpInside)
        return button
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Must be add line of code below .
        view.addSubview(addButton)
        addConstrains()
    }
    
    // This Function To give Constrain to View
    private func addConstrains(){
        var constraints = [NSLayoutConstraint]()
        // Add Constrains
        constraints.append(addButton.widthAnchor.constraint(equalToConstant: 60))
        constraints.append(addButton.heightAnchor.constraint(equalToConstant: 60))
        constraints.append(addButton.centerXAnchor.constraint(equalTo: view.centerXAnchor))
//        constraints.append(addButton.bottomAnchor.constraint(equalTo: tabBar.safeAreaLayoutGuide.topAnchor, constant: 25))
        
        
        
        // Activate (Applying)
        NSLayoutConstraint.activate(constraints)
    }
}
