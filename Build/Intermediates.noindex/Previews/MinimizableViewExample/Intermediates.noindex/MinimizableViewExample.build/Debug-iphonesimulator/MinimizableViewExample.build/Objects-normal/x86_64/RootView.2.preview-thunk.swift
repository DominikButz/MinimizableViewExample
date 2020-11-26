@_private(sourceFile: "RootView.swift") import MinimizableViewExample
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/RootView.swift", line: 124)
        AnyView(RootView().colorScheme(.dark))
    #sourceLocation()
    }
}

extension RootView {
    @_dynamicReplacement(for: dragOnEnded(value:)) private func __preview__dragOnEnded(value: DragGesture.Value) {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/RootView.swift", line: 102)
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

    #sourceLocation()
    }
}

extension RootView {
    @_dynamicReplacement(for: dragOnChanged(value:)) private func __preview__dragOnChanged(value: DragGesture.Value) {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/RootView.swift", line: 87)
        if self.miniHandler.isMinimized == false  { // expanded state
            if value.translation.height > 0 {
                self.miniHandler.draggedOffsetY = value.translation.height

            }
        } else {// minimized state
            
            if value.translation.height < 0 {
                self.miniHandler.draggedOffsetY = value.translation.height

            }
        }
    #sourceLocation()
    }
}

extension RootView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/RootView.swift", line: 26)
        AnyView(GeometryReader { proxy in

                TabView(selection: self.$selectedTabIndex) {
                    
                    Button(action: {
                        
                        self.miniHandler.present()
                        
                    }) { TranslucentTextButtonView(title: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Launch Minimizable View"), foregroundColor: .green, backgroundColor: .green)}.disabled(self.miniHandler.isPresented)
                        
                        .tabItem {
                            Image(systemName: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[0].arg[0].value", fallback: "chevron.up.square.fill"))
                            Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[1].arg[0].value", fallback: "Main View"))
                    }.tag(__designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 0))
                    
                    Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "More stuff")).tabItem {
                        Image(systemName: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "dot.square.fill"))
                        Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "2nd View"))
                    }.tag(__designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1))
                    
                    ListView(availableWidth: proxy.size.width)
                        .tabItem {
                        Image(systemName: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "square.split.2x1.fill"))
                        Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "List View"))
                    }.tag(__designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[1].arg[0].value", fallback: 2))
                    
                    
                }.background(Color(.secondarySystemFill))
                .statusBar(hidden: self.miniHandler.isPresented && self.miniHandler.isMinimized == false)
                .minimizableView(content: {ContentExample(animationNamespaceId: self.namespace)}, compactView: {EmptyView()}, backgroundView: {
                    VStack(spacing: __designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].arg[0].value", fallback: 0)){
                        
                        BlurView(style: .systemChromeMaterial)
                        if self.miniHandler.isMinimized {
                            Divider()
                        }
                    }.cornerRadius(self.miniHandler.isMinimized ? __designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].modifier[0].arg[0].value.then", fallback: 0) : __designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].modifier[0].arg[0].value.else", fallback: 20))
                    .onTapGesture(perform: {
                        withAnimation(.spring()){self.miniHandler.isMinimized = false}
                    })
                }, dragOnChanged: { (value) in
                    self.dragOnChanged(value: value)
                }, dragOnEnded: { (value) in
                    self.dragOnEnded(value: value)
                }, maxSize: CGSize(width: proxy.size.width, height: proxy.size.height))
                .environmentObject(self.miniHandler)
     
        })
    
        //
    #sourceLocation()
    }
}

import struct MinimizableViewExample.RootView
import struct MinimizableViewExample.ContentView_Previews