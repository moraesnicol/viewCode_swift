//
//  CodeView.swift
//  viewCode_swift
//
//  Created by Gabriel on 18/06/21.
//

import Foundation
import SnapKit


protocol CodeView {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
