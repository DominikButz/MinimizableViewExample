//
//  ContentView.swift
//  MinimizableView Example
//
//  Created by Dominik Butz on 6/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView
import Combine

struct ContentView: View {

    var minimizableViewHandler: MinimizableViewHandler = MinimizableViewHandler()
    @State var selectedTabIndex: Int = 0
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                
                TabView(selection: self.$selectedTabIndex) {
                    
                    Button(action: {
                        
                        self.minimizableViewHandler.present()
                        
                    }) { TranslucentTextButtonView(title: "Launch Minimizable View", foregroundColor: .green, backgroundColor: .green)}
                        .tabItem {
                            Image(systemName: "chevron.up.square.fill")
                            Text("Main View")
                    }.tag(0)
                    
                    Text("More stuff").tabItem {
                        Image(systemName: "dot.square.fill")
                        Text("2nd View")
                    }.tag(1)
                    
                    Text("Even more stuff").tabItem {
                        Image(systemName: "square.split.2x1.fill")
                        Text("3rd View")
                    }.tag(2)
                    
                    
                }
               

                MinimizableView(content: AnyView(ContentExample()), compactView: AnyView(CompactViewExample(width: proxy.size.width, height: 44.0)),  minimizedHeight: 49.0, bottomMargin: 56, expandedTopMargin: 20, geometry: proxy).environmentObject(self.minimizableViewHandler)
        
            }
                      
                
        }
    
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
