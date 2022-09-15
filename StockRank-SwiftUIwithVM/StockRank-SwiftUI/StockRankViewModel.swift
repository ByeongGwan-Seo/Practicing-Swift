//
//  StockRankViewModel.swift
//  StockRank-SwiftUI
//
//  Created by seobyeonggwan on 2022/09/14.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
}
