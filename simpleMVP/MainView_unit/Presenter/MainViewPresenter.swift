//
//  MainViewPresenter.swift
//  simpleMVP
//
//  Created by Евгений Коузов on 02.05.2020.
//  Copyright © 2020 barche. All rights reserved.
//

import Foundation

class MainViewPresenter: MainViewPresenterProtocol {
    
    var view: MainViewProtocol?
    var text: String = ""
    
    required init(view: MainViewProtocol) {
        self.view = view
    }
    
    func presentName() {
        guard let text = view?.nameTF.text else { return }
        self.text = text != "" ? "Hello, " + text : "you name will show here..."
        configureMainViewUI()
    }
    
    internal func configureMainViewUI() {
        view?.setupGreeting(text: self.text)
    }
    
}
