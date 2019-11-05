//
//  ModalView.swift
//  CustomModal
//
//  Created by Dominik Butz on 6/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView

struct ContentExample: View {
    
    @EnvironmentObject var minimizableViewState: MinimizableViewState
    
    var listContent:[String] = ["Text0", "Text1","Text2","Text3","Text","Text","Text","Text","Text","Text", "Text","Text","Text","Text","Text" ]
    
    var body: some View {
        GeometryReader { proxy in

                VStack(alignment: .center, spacing: 5.0) {

                        HStack {
                                Spacer()
                                Button(action: {
                                    self.minimizableViewState.isPresented = false
                                }) {
                                    Image(systemName: "xmark.circle").font(.system(size: 20))
                                }.padding(8)
                        }
                        
                        List(self.listContent, id: \.self) { item in
                            Text(item)
                        }.frame(width: proxy.size.width - 20)
                    
                
                }
                

        }
    }
}

//struct CompactView: View {
//
//    @EnvironmentObject var minimizableViewState: MinimizableViewState
//
//    var width: CGFloat
//
//    init(width: CGFloat) {
//        self.width = width
//    }
//
//    var body: some View {
//         HStack {
//                Text("Compact View")
//                Text("more stuff")
//            }.frame(width: width, height: 44).onTapGesture {
//                    self.minimizableViewState.isMinimized = false
//         }.background(Color(.systemBackground))
//    }
//
//}


