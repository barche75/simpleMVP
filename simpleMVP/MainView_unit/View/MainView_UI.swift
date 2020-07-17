//
//  MainView_UI.swift
//  simpleMVP
//
//  Created by Евгений Коузов on 02.05.2020.
//  Copyright © 2020 barche. All rights reserved.
//

import UIKit

extension MainView {
    
    func setupUIForMainView() {
        
        title = "MVP"
        view.backgroundColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        
        view.addSubview(nameTF)
        view.addSubview(nameLBL)
        view.addSubview(nameBTN)
        
        nameTF.translatesAutoresizingMaskIntoConstraints = false
        nameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameTF.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -64).isActive = true
        nameTF.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        nameTF.heightAnchor.constraint(lessThanOrEqualToConstant: 50).isActive = true
        nameTF.placeholder = "enter your name"
        nameTF.borderStyle = .roundedRect
        nameTF.clearButtonMode = .whileEditing
        
        nameLBL.translatesAutoresizingMaskIntoConstraints = false
        nameLBL.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLBL.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -64).isActive = true
        nameLBL.topAnchor.constraint(equalTo: nameTF.bottomAnchor, constant: 64).isActive = true
        nameLBL.heightAnchor.constraint(lessThanOrEqualToConstant: 50).isActive = true
        nameLBL.textAlignment = .center
        nameLBL.textColor = .gray
        nameLBL.text = "you name will show here..."
        
        nameBTN.translatesAutoresizingMaskIntoConstraints = false
        nameBTN.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameBTN.topAnchor.constraint(equalTo: nameLBL.bottomAnchor, constant: 64).isActive = true
        nameBTN.widthAnchor.constraint(lessThanOrEqualToConstant: 100).isActive = true
        nameBTN.heightAnchor.constraint(lessThanOrEqualToConstant: 50).isActive = true
        nameBTN.setTitle("press me", for: .normal)
        nameBTN.addTarget(self, action: #selector(nameBTN_Action), for: .touchUpInside)
        
    }
    
}
