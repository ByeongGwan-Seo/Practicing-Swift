//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by seobyeonggwan on 2022/08/22.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button{
            print("Button Tapped")
        } label: {
            Text("Click Here")
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
