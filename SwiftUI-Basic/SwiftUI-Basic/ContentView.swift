//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by seobyeonggwan on 2022/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                ImageView()
                ButtonView()
                TextView()
            }
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
