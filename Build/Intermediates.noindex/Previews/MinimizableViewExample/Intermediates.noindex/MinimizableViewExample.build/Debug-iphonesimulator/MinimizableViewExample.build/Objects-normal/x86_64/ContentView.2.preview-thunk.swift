@_private(sourceFile: "ContentView.swift") import MinimizableViewExample
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentView.swift", line: 61)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentView.swift", line: 19)
        AnyView(GeometryReader { proxy in
            ZStack {
                
                TabView(selection: self.$selectedTabIndex) {
                    
                    Button(action: {
                        
                        self.minimizableViewHandler.present()
                        
                    }) { TranslucentTextButtonView(title: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Launch Minimizable View"), foregroundColor: .green, backgroundColor: .green)}
                        .tabItem {
                            Image(systemName: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "chevron.up.square.fill"))
                            Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Main View"))
                    }.tag(__designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 0))
                    
                    Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "More stuff")).tabItem {
                        Image(systemName: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "dot.square.fill"))
                        Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "2nd View"))
                    }.tag(__designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1))
                    
                    Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Even more stuff")).tabItem {
                        Image(systemName: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "square.split.2x1.fill"))
                        Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "3rd View"))
                    }.tag(__designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[1].arg[0].value", fallback: 2))
                    
                    
                }
               

                MinimizableView(content: AnyView(ContentExample()), compactView: AnyView(CompactViewExample().modifier(VerticalDragGesture(translationHeightTriggerValue: __designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 40)))),  minimizedHeight: __designTimeFloat("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value", fallback: 44.0), bottomMargin: __designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[3].value", fallback: 44), expandedTopMargin: __designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[4].value", fallback: 20), geometry: proxy).environmentObject(self.minimizableViewHandler)
        
            }
                      
                
        })
#sourceLocation()
    
        //
    }
}

typealias ContentView = MinimizableViewExample.ContentView
typealias ContentView_Previews = MinimizableViewExample.ContentView_Previews