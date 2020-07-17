//
//  ContentView.swift
//  simpleMVP
//
//  Created by Евгений Коузов on 02.05.2020.
//  Copyright © 2020 barche. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIViewController, MainViewProtocol {
    
    
    let nameTF  = UITextField(frame: .zero)
    var nameLBL = UILabel(frame: .zero)
    let nameBTN = UIButton(type: .system)
    
    var presenter: MainViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = MainViewPresenter(view: self)
        setupUIForMainView()
    }
    
    @objc func nameBTN_Action() {
        presenter?.presentName()
    }
    
    func setupGreeting(text: String) {
        nameLBL.textColor = text == "you name will show here..." ? .gray : .black
        nameLBL.text = text
        nameTF.text = ""
        nameTF.resignFirstResponder()
    }
    
    deinit {
        presenter = nil
    }
    
}


