//
//  ViewControllerScreen.swift
//  viewCode_swift
//
//  Created by Gabriel on 18/06/21.
//

import UIKit




final class ViewControllerScreen: UIView {
    
    
 
    
    
    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 18.0
        return view
        
    }()
    
    let leftBox = GridBoxView()
    let rightBox = GridBoxView()
    let fetchBottom = FetchButtom()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


extension ViewControllerScreen: CodeView {
    
    func buildViewHierarchy() {
        addSubview(fetchBottom)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
    }
    
    func setupConstraints() {
  
        
        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
            make.height.equalTo(320)
            make.centerY.equalToSuperview()
        }
        
        fetchBottom.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(50)
            make.bottom.equalTo(self).inset(15)
        }
        
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .systemPink
        
    }
    
    
    
}
