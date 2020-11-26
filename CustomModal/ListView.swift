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
    
    @State var data = (1...20).map { "Item \($0)" }
    var availableWidth: CGFloat

    var body: some View {
    
            NavigationView {
                ScrollView {
                    LazyVGrid(columns:  [GridItem(.adaptive(minimum: 160, maximum: 160))], alignment: .center, spacing: 20) {
                        ForEach(data, id:\.self) { item in
                            RowView(availableWidth: 150, item: item).onTapGesture {
                                self.miniHandler.isPresented = true
                            }
                        }
                    }.navigationBarTitle(Text("List"))
                }
            }.navigationViewStyle(StackNavigationViewStyle())
        }
        
    
}



struct RowView: View {
   var availableWidth: CGFloat

    var item: String

    var body: some View {

        Text(item).frame(width: availableWidth, height:100).background(RoundedRectangle(cornerRadius: 5).foregroundColor(.blue)).padding(.horizontal, 10)

    }
}
