//
//  ListView.swift
//  MinimizableViewExample
//
//  Created by Dominik Butz on 30/10/2020.
//  Copyright © 2020 Duoyun. All rights reserved.
//

import Foundation
import MinimizableView

import SwiftUI

struct ListView: View {
    @EnvironmentObject var miniHandler: MinimizableViewHandler
    
    @State var data = (1...10).map { "Item \($0)" }
    var availableWidth: CGFloat
    
    var body: some View {
    
            NavigationView {
                List {
                    ForEach(data, id:\.self) { item in
                        RowView(availableWidth: availableWidth * 0.9, item: item)
                    }
                }.navigationBarTitle(Text("List"))
            }
        }
        
    
}



struct RowView: View {
   var availableWidth: CGFloat

    var item: String

    var body: some View {

        Text(item).frame(width: availableWidth, height:100).background(RoundedRectangle(cornerRadius: 5).foregroundColor(.green)).padding(.horizontal, 10)

    }
}
