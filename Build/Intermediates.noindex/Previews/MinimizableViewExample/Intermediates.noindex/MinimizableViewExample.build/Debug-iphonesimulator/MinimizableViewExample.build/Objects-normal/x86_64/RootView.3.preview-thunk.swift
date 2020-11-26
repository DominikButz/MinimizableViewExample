@_private(sourceFile: "RootView.swift") import MinimizableViewExample
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/RootView.swift", line: 124)
        AnyView(__designTimeSelection(RootView().colorScheme(.dark), "#5184.[4].[0].property.[0].[0]"))
    #sourceLocation()
    }
}

extension RootView {
    @_dynamicReplacement(for: dragOnEnded(value:)) private func __preview__dragOnEnded(value: DragGesture.Value) {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/RootView.swift", line: 102)
        if self.miniHandler.isMinimized == false  {
            if value.translation.height > 60 {
                  __designTimeSelection(self.miniHandler.minimize(), "#5184.[3].[6].[0].[0].[0].[0].[0]")
           
            }
            
        } else {
            if value.translation.height < -60 {
                  __designTimeSelection(self.miniHandler.expand(), "#5184.[3].[6].[0].[1].[0].[0].[0]")
    
              }
            
        }
       __designTimeSelection(withAnimation(.spring()) {
            self.miniHandler.draggedOffsetY = 0
       }, "#5184.[3].[6].[1]")

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
        AnyView(__designTimeSelection(GeometryReader { proxy in

                __designTimeSelection(TabView(selection: __designTimeSelection(self.$selectedTabIndex, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[0].value")) {
                    
                    __designTimeSelection(Button(action: {
                        
                        __designTimeSelection(self.miniHandler.present(), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        
                    }) { __designTimeSelection(TranslucentTextButtonView(title: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Launch Minimizable View"), foregroundColor: .green, backgroundColor: .green), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")}.disabled(__designTimeSelection(self.miniHandler.isPresented, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value"))
                        
                        .tabItem {
                            __designTimeSelection(Image(systemName: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[0].arg[0].value", fallback: "chevron.up.square.fill")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[0]")
                            __designTimeSelection(Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[1].arg[0].value", fallback: "Main View")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[2].arg[0].value", fallback: 0)), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0]")
                    
                    __designTimeSelection(Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "More stuff")).tabItem {
                        __designTimeSelection(Image(systemName: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "dot.square.fill")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "2nd View")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1)), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
                    
                    __designTimeSelection(ListView(availableWidth: __designTimeSelection(proxy.size.width, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value"))
                        .tabItem {
                        __designTimeSelection(Image(systemName: __designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "square.split.2x1.fill")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "List View")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[1].arg[0].value", fallback: 2)), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2]")
                    
                    
                }.background(__designTimeSelection(Color(.secondarySystemFill), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"))
                .statusBar(hidden: self.miniHandler.isPresented && self.miniHandler.isMinimized == false)
                .minimizableView(content: {__designTimeSelection(ContentExample(animationNamespaceId: __designTimeSelection(self.namespace, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0].arg[0].value")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.[0]")}, compactView: {__designTimeSelection(EmptyView(), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value.[0]")}, backgroundView: {
                    __designTimeSelection(VStack(spacing: __designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].arg[0].value", fallback: 0)){
                        
                        __designTimeSelection(BlurView(style: .systemChromeMaterial), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].arg[1].value.[0]")
                        if self.miniHandler.isMinimized {
                            __designTimeSelection(Divider(), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].arg[1].value.[1].[0].[0]")
                        }
                    }.cornerRadius(__designTimeSelection(self.miniHandler.isMinimized, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].modifier[0].arg[0].value.if") ? __designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].modifier[0].arg[0].value.then", fallback: 0) : __designTimeInteger("#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].modifier[0].arg[0].value.else", fallback: 20))
                    .onTapGesture(perform: {
                        __designTimeSelection(withAnimation(.spring()){self.miniHandler.isMinimized = false}, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0].modifier[1].arg[0].value.[0]")
                    }), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value.[0]")
                }, dragOnChanged: { (value) in
                    __designTimeSelection(self.dragOnChanged(value: __designTimeSelection(value, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[3].value.[0].modifier[0].arg[0].value")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[3].value.[0]")
                }, dragOnEnded: { (value) in
                    __designTimeSelection(self.dragOnEnded(value: __designTimeSelection(value, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[4].value.[0].modifier[0].arg[0].value")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[4].value.[0]")
                }, maxSize: __designTimeSelection(CGSize(width: __designTimeSelection(proxy.size.width, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[5].value.arg[0].value"), height: __designTimeSelection(proxy.size.height, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[5].value.arg[1].value")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[2].arg[5].value"))
                .environmentObject(__designTimeSelection(self.miniHandler, "#5184.[3].[4].property.[0].[0].arg[0].value.[0].modifier[3].arg[0].value")), "#5184.[3].[4].property.[0].[0].arg[0].value.[0]")
     
        }, "#5184.[3].[4].property.[0].[0]"))
    
        //
    #sourceLocation()
    }
}

import struct MinimizableViewExample.RootView
import struct MinimizableViewExample.ContentView_Previews