//
//  CompactViewExample.swift
//  MinimizableViewExample
//
//  Created by Dominik Butz on 5/11/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import Combine
import MinimizableView

struct CompactViewExample: View {
    
    @EnvironmentObject var minimizableViewState: MinimizableViewState
    
    var width: CGFloat
    var height: CGFloat
    
    init(width: CGFloat, height: CGFloat) {
        self.width = width
        self.height = height
    }
    
    var body: some View {
         HStack {
                Text("Compact View")
         }.frame(width: width, height: self.height).onTapGesture {
                    self.minimizableViewState.isMinimized = false
         }.background(Color(.systemBackground))
    }
}

struct CompactViewExample_Previews: PreviewProvider {
    static var previews: some View {
        CompactViewExample(width: 300, height: 44)
    }
}
