//
//  Buttons.swift
//  MinimizableViewExample
//
//  Created by Dominik Butz on 21/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import Foundation
import SwiftUI


struct TranslucentTextButtonView: View {

    let title: String
    let foregroundColor: Color
    let backgroundColor: Color
    
    var body: some View {
        
        Text(title).font(.headline).padding(EdgeInsets(top: 5, leading: 7, bottom: 5, trailing: 7)).background(backgroundColor.opacity(0.4)).foregroundColor(foregroundColor).clipShape(RoundedRectangle(cornerRadius: 3)).padding()
    }
}


struct VerticalSymbolTextButtonView: View {
    
    let imageSystemName: String
    let title: String
    let foregroundColor: Color
    let size: CGFloat
    
    var body: some View {
        
        VStack(spacing: 1) {
            Image(systemName: self.imageSystemName).font(.system(size: size))
                                        
            Text(self.title).font(.caption).padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
        }.foregroundColor(self.foregroundColor).padding(EdgeInsets(top: 7, leading: 5, bottom: 1, trailing: 5))
    }
    
}
