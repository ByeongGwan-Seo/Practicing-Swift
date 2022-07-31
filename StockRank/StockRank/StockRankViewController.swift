//
//  StockRankViewController.swift
//  StockRank
//
//  Created by seobyeonggwan on 2022/07/31.
//

import UIKit

class StockRankViewController: UIViewController {

    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //Data, Presentation, Layout
    //Data : 어떤 데이터? - 여기서는 Stockmodel, Assets의 아이콘
    //Presentation : 셀을 어떻게 표현?
    //Layout : 셀을 어떻게 배치?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //data를 누가 알려줄 거냐?
        collectionView.dataSource = self
        
        //layout을 어떻게 배치할 거냐?
        collectionView.delegate = self
        
        //dataSource, delegate는 프로토콜 -> 수행해야 하는 규칙이 있고, 특정 개체가 해당 규칙을 수행함. 여기서는 누가 그걸 가르쳐주는가? -> self. 그러니까 collectionView가 해당 정보들을 알려준다.
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    
    //아래는 UICollectionViewDataSource 프로토콜에서 반드시 구현해야 하는 메소드들.
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //재사용 가능한 셀을 가져오겠다. -> 구분자를 통해 가져올 수 있음.(identifier)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath)
        return cell
        
//        return UICollectionViewCell()
    }
}

extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    
}
