//
//  ViewController.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let rootView = HomeView()
    
    override func loadView() {
         view = rootView
    }

}

