//
//  Label.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

import UIKit

final class Label : UIView {
    
    //MARK: - Views
    
    private let labelFirst : UILabel = {
       let label = UILabel()
        
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hola mi primer Label"

        return label
    }()
    
    
    //MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
            
        configureView()
        buildHierachy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods

    private func configureView() {
        
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 20
    }
    
    private func buildHierachy() {
        
        addSubview(labelFirst)
        
        
    }
    
    private func setupConstraints(){
        
        NSLayoutConstraint.activate([
            
            labelFirst.topAnchor.constraint(equalTo: topAnchor , constant: 10),
            labelFirst.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            labelFirst.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            labelFirst.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
            
            
            
        ])
        
    }
}
