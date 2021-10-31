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
import NavigationStack

struct RootView: View {

    @ObservedObject var miniHandler: MinimizableViewHandler = MinimizableViewHandler()
    @State var selectedTabIndex: Int = 0
    
    @Namespace var namespace

    var body: some View {
        GeometryReader { proxy in

                TabView(selection: self.$selectedTabIndex) {
                    
                    Button(action: {
                        print(proxy.safeAreaInsets.bottom)
                        self.miniHandler.present()
                        
                    }) { TranslucentTextButtonView(title: "Launch Minimizable View", foregroundColor: .green, backgroundColor: .green)}.disabled(self.miniHandler.isPresented)
                        
                        .tabItem {
                            Image(systemName: "chevron.up.square.fill")
                            Text("Main View")
                    }.tag(0)
                    
                    Text("More stuff").tabItem {
                        Image(systemName: "dot.square.fill")
                        Text("2nd View")
                    }.tag(1)
                    
                    ListView(availableWidth: proxy.size.width)
                        .tabItem {
                        Image(systemName: "square.split.2x1.fill")
                        Text("List View")
                    }.tag(2)
                    
                    
                }.background(Color(.secondarySystemFill))
                .statusBar(hidden: self.miniHandler.isPresented && self.miniHandler.isMinimized == false)
                .minimizableView(content: {ContentExample(animationNamespaceId: self.namespace)}, compactView: {EmptyView()}, backgroundView: {
                    VStack(spacing: 0){
                        BlurView(style: .systemChromeMaterial)
                        if self.miniHandler.isMinimized {
                            Divider()
                        }
                    }.cornerRadius(self.miniHandler.isMinimized ? 0 : 20)
                    .onTapGesture(perform: {
                        if self.miniHandler.isMinimized {
                            self.miniHandler.expand()
                            //alternatively, override the default animation. self.miniHandler.expand(animation: Animation)
                        }
                    })
                }, dragOnChanged: { (value) in
                    self.dragOnChanged(value: value)
                }, dragOnEnded: { (value) in
                    self.dragOnEnded(value: value)
                }, geometry: proxy, settings: MiniSettings(minimizedHeight: 80))
                .environmentObject(self.miniHandler)
     
        }
    
        //
    }
    
    
    func dragOnChanged(value: DragGesture.Value) {
        
        if self.miniHandler.isMinimized == false  { // expanded state
            if value.translation.height > 0 {
                self.miniHandler.draggedOffsetY = value.translation.height / 2 // divide by 2 for more "inertia"
            }
        } else {// minimized state
            if value.translation.height < 0 {
                self.miniHandler.draggedOffsetY = value.translation.height / 2 // divide by 2 for more "inertia"
            }
        }
    }
    
    func dragOnEnded(value: DragGesture.Value) {
        
        if self.miniHandler.isMinimized == false  {
            if value.translation.height > 60 {
                  self.miniHandler.minimize()
           
            }
            
        } else {
            if value.translation.height < -60 {
                  self.miniHandler.expand()
    
              }
            
        }
       withAnimation(.spring()) {
            self.miniHandler.draggedOffsetY = 0
       }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView().colorScheme(.dark)
    }
}
