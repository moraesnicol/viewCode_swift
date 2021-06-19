//
//  GridBoxView.swift
//  viewCode_swift
//
//  Created by Gabriel on 18/06/21.
//


import UIKit




final class GridBoxView: UIView {
    
   
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        return view
    }()
    
    lazy var textContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()
    
    
    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
    
    lazy var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .yellow
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension GridBoxView: CodeView {
    
    func buildViewHierarchy() {
        addSubview(imageView)
        textContainer.addArrangedSubview(title)
        textContainer.addArrangedSubview(subtitle)
        addSubview(textContainer)
    }
    
    func setupConstraints() {
        imageView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        
        textContainer.snp.makeConstraints { make in
            make.left.bottom.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(8)
        }
        
    }
    
    
    func setupAdditionalConfiguration() {
        
    }
    
    
    
}




