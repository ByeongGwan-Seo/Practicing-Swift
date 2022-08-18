//
//  QuicFocusListViewController.swift
//  HeadSpaceFocus
//
//  Created by seobyeonggwan on 2022/08/18.
//

import UIKit

//2개의 section, section안에 5개의 group, group안에 3개의 item(image, Label, Label)

class QuickFocusListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let breathingList = QuickFocus.breathing
    let walkingList = QuickFocus.walking
    
    //CaseIterable?
    enum Section: CaseIterable {
        case breathe
        case walking
        
        var title: String {
            switch self {
            case .breathe: return "Breathing exercises"
            case .walking: return "Mindful walks"
            }
        }
    }
    
    typealias Item = QuickFocus
    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        datasource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: {collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuickFocusCell", for: indexPath) as? QuickFocusCell else {
                return nil
            }
            cell.configure(item)
            return cell
        })
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.breathe, .walking])
        snapshot.appendItems(breathingList, toSection: .breathe)
        snapshot.appendItems(walkingList, toSection: .walking)
        datasource.apply(snapshot)
        
        collectionView.collectionViewLayout = layout()
        
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .estimated(50))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        return layout
    }
}
