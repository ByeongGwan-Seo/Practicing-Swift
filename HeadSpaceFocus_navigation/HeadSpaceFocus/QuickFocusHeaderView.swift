//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by seobyeonggwan on 2022/08/18.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
}
