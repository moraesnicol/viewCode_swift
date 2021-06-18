//
//  ViewControllerScreen.swift
//  viewCode_swift
//
//  Created by Gabriel on 18/06/21.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemPink
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
