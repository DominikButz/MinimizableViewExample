//
//  ContentView.swift
//  MinimizableView Example
//
//  Created by Dominik Butz on 6/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView
//import NavigationStack

struct RootView: View {

    @ObservedObject var miniHandler: MinimizableViewHandler = MinimizableViewHandler()
    @Environment(\.colorScheme) var colorScheme
    @State var selectedTabIndex: Int = 0
    @State var miniViewBottomMargin: CGFloat = 0  // not strictly necessary but the tab bar can change its height, e.g. when iPad window gets resized with stage manager
    @GestureState var dragOffset = CGSize.zero
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
                    #if os(iOS)
                        .background(TabBarAccessor { tabBar in
                            self.miniViewBottomMargin = tabBar.bounds.height - 1
                        })
                    #endif
                    
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
                .minimizableView(content: {ContentExample(animationNamespaceId: self.namespace)},
                  compactView: {
                    return EmptyView()
                     // put CompactViewExample() here to see the a different approach for the compact view
                }, backgroundView: {
                    self.backgroundView()},
                    dragOffset: $dragOffset,
                    dragUpdating: { (value, state, _) in
                        state = value.translation
                        self.dragUpdated(value: value)
                }, dragOnChanged: { (value) in
                    // unused
                },
                    dragOnEnded: { (value) in
                    self.dragOnEnded(value: value)
                }, minimizedBottomMargin: self.miniViewBottomMargin, settings: MiniSettings(minimizedHeight: 75, minimumDragDistance: 1))
                .environmentObject(self.miniHandler)
  
        }
    
        
    }
    
    
    func backgroundView() -> some View {
        VStack(spacing: 0){
            BlurView(style: .systemChromeMaterial)
            if self.miniHandler.isMinimized {
                Divider()
            }
        }.cornerRadius(self.miniHandler.isMinimized ? 0 : 20)
            .shadow(color: .gray.opacity(self.colorScheme == .light ? 0.5 : 0), radius: 5, x: 0, y: -5)
        .onTapGesture(perform: {
            if self.miniHandler.isMinimized {
                self.miniHandler.expand()
                //alternatively, override the default animation. self.miniHandler.expand(animation: Animation)
            }
        })
    }
    
    
    func dragUpdated(value: DragGesture.Value) {
        
        if self.miniHandler.isMinimized == false && value.location.y > 200 && value.translation.height > 0   { // expanded state
           
            withAnimation(.spring(response: 0)) {
                self.miniHandler.draggedOffsetY = value.translation.height  // divide by a factor > 1 for more "inertia"
            }
            
        } else if self.miniHandler.isMinimized && value.translation.height < 0   {// minimized state
            if self.miniHandler.draggedOffsetY >= -60 {
                withAnimation(.spring(response: 0)) {
                    self.miniHandler.draggedOffsetY = value.translation.height // divide by a factor > 1 for more "inertia"
                }
            }
            
        }
    }
    
    func dragOnEnded(value: DragGesture.Value) {
        
        if self.miniHandler.isMinimized == false && value.translation.height > 90  {
            self.miniHandler.minimize()

        } else if self.miniHandler.isMinimized &&  value.translation.height <= -60 {
                  self.miniHandler.expand()
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
