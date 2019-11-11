@_private(sourceFile: "ContentView.swift") import MinimizableViewExample
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentView.swift", line: 61)
        AnyView(__designTimeSelection(ContentView(), "#20265.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentView.swift", line: 19)
        AnyView(__designTimeSelection(GeometryReader { proxy in
            __designTimeSelection(ZStack {
                
                __designTimeSelection(TabView(selection: __designTimeSelection(self.$selectedTabIndex, "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value")) {
                    
                    __designTimeSelection(Button(action: {
                        
                        __designTimeSelection(self.minimizableViewHandler.present(), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.[0]")
                        
                    }) { __designTimeSelection(TranslucentTextButtonView(title: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Launch Minimizable View"), foregroundColor: .green, backgroundColor: .green), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")}
                        .tabItem {
                            __designTimeSelection(Image(systemName: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "chevron.up.square.fill")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0]")
                            __designTimeSelection(Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Main View")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 0)), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                    
                    __designTimeSelection(Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "More stuff")).tabItem {
                        __designTimeSelection(Image(systemName: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "dot.square.fill")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "2nd View")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1)), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1]")
                    
                    __designTimeSelection(Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Even more stuff")).tabItem {
                        __designTimeSelection(Image(systemName: __designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "square.split.2x1.fill")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "3rd View")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[1].arg[0].value", fallback: 2)), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2]")
                    
                    
                }, "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
               

                __designTimeSelection(MinimizableView(content: __designTimeSelection(AnyView(__designTimeSelection(ContentExample(), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value"), compactView: __designTimeSelection(AnyView(__designTimeSelection(CompactViewExample().modifier(__designTimeSelection(VerticalDragGesture(translationHeightTriggerValue: __designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value.modifier[0].arg[0].value.arg[0].value", fallback: 40)), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value.modifier[0].arg[0].value")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value"),  minimizedHeight: __designTimeFloat("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value", fallback: 44.0), bottomMargin: __designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[3].value", fallback: 44), expandedTopMargin: __designTimeInteger("#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[4].value", fallback: 20), geometry: __designTimeSelection(proxy, "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[5].value")).environmentObject(__designTimeSelection(self.minimizableViewHandler, "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#20265.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
        
            }, "#20265.[3].[2].property.[0].[0].arg[0].value.[0]")
                      
                
        }, "#20265.[3].[2].property.[0].[0]"))
#sourceLocation()
    
        //
    }
}

typealias ContentView = MinimizableViewExample.ContentView
typealias ContentView_Previews = MinimizableViewExample.ContentView_Previews