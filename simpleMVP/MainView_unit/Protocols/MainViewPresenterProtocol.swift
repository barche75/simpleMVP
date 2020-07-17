//
//  MainViewPresenterProtocol.swift
//  simpleMVP
//
//  Created by Евгений Коузов on 02.05.2020.
//  Copyright © 2020 barche. All rights reserved.
//

import Foundation

protocol MainViewPresenterProtocol {
    init(view: MainViewProtocol)
    var view: MainViewProtocol? { get }
    var text: String            { get }
    func presentName()
    func configureMainViewUI()
}
