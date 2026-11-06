//
//  HomeView.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//
import UIKit

final class HomeView: UIView {

    // MARK: - Views

    private let labelView: Label = {
        let view = Label()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Initializers

    override init(frame: CGRect) {
        super.init(frame: frame)

        configureView()
        buildHierarchy()
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private Methods

    private func configureView() {
        backgroundColor = .systemBackground
    }

    private func buildHierarchy() {
        addSubview(labelView)
    }

    private func setupConstraints() {
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
            )
        ])
    }
}
