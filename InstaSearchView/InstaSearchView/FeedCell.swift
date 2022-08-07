//
//  FeedCell.swift
//  InstaSearchView
//
//  Created by seobyeonggwan on 2022/08/05.
//

import UIKit

class FeedCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
    }
    
    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
    
}
