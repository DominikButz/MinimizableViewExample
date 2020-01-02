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

    @ObservedObject var minimizableViewHandler: MinimizableViewHandler = MinimizableViewHandler()
    @State var selectedTabIndex: Int = 0
    
    init() {
        
        self.minimizableViewHandler.settings.backgroundColor = Color(.secondarySystemBackground)
        self.minimizableViewHandler.settings.lateralMargin = 10
    }
    
    var body: some View {
        GeometryReader { proxy in

                TabView(selection: self.$selectedTabIndex) {
                    
                    Button(action: {
                        
                        self.minimizableViewHandler.present()
                        
                    }) { TranslucentTextButtonView(title: "Launch Minimizable View", foregroundColor: .green, backgroundColor: .green)}.disabled(self.minimizableViewHandler.isPresented)
                        
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
                    
                    
                }.overlay( MinimizableView(content: AnyView(ContentExample()), compactView: AnyView(CompactViewExample()), bottomMargin: 50.0, geometry: proxy).environmentObject(self.minimizableViewHandler))
               


                      
                
        }
    
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
