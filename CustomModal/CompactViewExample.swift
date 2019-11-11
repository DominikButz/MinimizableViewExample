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
    
    @EnvironmentObject var minimizableViewHandler: MinimizableViewHandler
    
    var body: some View {
        GeometryReader { proxy in
             HStack {
                Text("Compact View")
             }.frame(width: proxy.size.width, height: proxy.size.height).onTapGesture {
                    self.minimizableViewHandler.expand()
             }.background(Color(.secondarySystemBackground)).modifier(VerticalDragGesture(translationHeightTriggerValue: 40))
        }
    }
}

struct CompactViewExample_Previews: PreviewProvider {
    static var previews: some View {
        CompactViewExample()
    }
}
