//
//  ChatListCollectionViewCell.swift
//  ChatList
//
//  Created by seobyeonggwan on 2022/07/31.
//

import UIKit

class ChatListCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chatLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    //스토리보드에서 꺼내올때 가장 먼저 호출되는 함수
    override func awakeFromNib() {
        thumbnail.layer.cornerRadius = 10
    }
    
    
    func configure(_ chat: Chat) {
        thumbnail.image = UIImage(named: chat.name)
        nameLabel.text = chat.name
        chatLabel.text = chat.chat
        dateLabel.text = formattedDateString(dateString: chat.date)
    }
    
    func formattedDateString(dateString: String) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        
        //문자열을 date 타입으로
        if let date = formatter.date(from: dateString) {
            formatter.dateFormat = "M/d"
            
            return formatter.string(from: date)
        } else {
            return ""
        }
    }
    
}
