//
//  MainViewProtocol.swift
//  simpleMVP
//
//  Created by Евгений Коузов on 02.05.2020.
//  Copyright © 2020 barche. All rights reserved.
//

import UIKit

protocol MainViewProtocol {
    var nameTF:    UITextField                { get }
    var nameLBL:   UILabel                    { get set }
    var nameBTN:   UIButton                   { get }
    var presenter: MainViewPresenterProtocol? { get }
    func setupGreeting(text: String)
}
