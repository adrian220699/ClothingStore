//
//  HomeView.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//
import UIKit

class HomeView : UIView {
    
    //MARK: - Views
    
    private let labelView : Label = {
       
        let view = Label()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
 
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       configureView()
       buildHierachy()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    //MARK: - Private Methods
    
    func configureView() {
        
        backgroundColor = .systemBackground
        
        
    }
    
    func buildHierachy() {
        
        addSubview(labelView)
        
    }
    
    func setupConstrains() {
        
        NSLayoutConstraint.activate([
            
            labelView.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: 20
            ),
            
            labelView.leadingAnchor.constraint(
                equalTo: leadingAnchor,
                constant: 25
            ),
            
            labelView.trailingAnchor.constraint(
                equalTo: trailingAnchor,
                constant: -25
            ),
            
            
        ])
        
    }
    
    
}
