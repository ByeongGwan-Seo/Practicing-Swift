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
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
                
        }
        .padding()
        .frame(height: 100)
        .background(.pink)
        .cornerRadius(20)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
