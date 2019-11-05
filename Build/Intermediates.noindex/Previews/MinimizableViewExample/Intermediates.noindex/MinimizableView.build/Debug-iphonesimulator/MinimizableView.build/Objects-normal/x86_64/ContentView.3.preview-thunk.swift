@_private(sourceFile: "ContentView.swift") import MinimizableView
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/CustomModal/CustomModal/ContentView.swift", line: 63)
        AnyView(__designTimeSelection(ContentView(), "#12791.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/CustomModal/CustomModal/ContentView.swift", line: 19)
        AnyView(__designTimeSelection(GeometryReader { proxy in
            __designTimeSelection(ZStack {
                
                __designTimeSelection(TabView(selection: __designTimeSelection(self.$selectedTabIndex, "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value")) {
                    
                    __designTimeSelection(Button(action: {
                        
                        if self.minimizableViewState.isPresented == false {
                            self.minimizableViewState.isPresented = true
                        }
                        
                    }) { __designTimeSelection(Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Launch Minimizable View")).font(.headline).foregroundColor(.secondary).padding(__designTimeSelection(EdgeInsets(top: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: 5), leading: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value", fallback: 7), bottom: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value", fallback: 5), trailing: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[3].value", fallback: 7)), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value")).background(__designTimeSelection(Color.green.opacity(__designTimeFloat("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.6)), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[3].arg[0].value")).clipShape(__designTimeSelection(RoundedRectangle(cornerRadius: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[4].arg[0].value.arg[0].value", fallback: 3)), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[4].arg[0].value")).padding(), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]") }
                        .tabItem {
                            __designTimeSelection(Image(systemName: __designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "chevron.up.square.fill")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0]")
                            __designTimeSelection(Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Main View")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 0)), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0]")
                    
                    __designTimeSelection(Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "More stuff")).tabItem {
                        __designTimeSelection(Image(systemName: __designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "dot.square.fill")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "2nd View")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1)), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1]")
                    
                    __designTimeSelection(Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Even more stuff")).tabItem {
                        __designTimeSelection(Image(systemName: __designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "square.split.2x1.fill")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0]")
                        __designTimeSelection(Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "3rd View")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1]")
                    }.tag(__designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[1].arg[0].value", fallback: 2)), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2]")
                    
                    
                }, "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
               

                __designTimeSelection(MinimizableView(content: __designTimeSelection(AnyView(__designTimeSelection(ContentExample(), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value.arg[0].value")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value"), compactView: __designTimeSelection(AnyView(__designTimeSelection(CompactViewExample(width: __designTimeSelection(proxy.size.width, "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value.arg[0].value")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value.arg[0].value")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[1].value"),  minimizedHeight: __designTimeFloat("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value", fallback: 44.0), bottomMargin: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[3].value", fallback: 58), expandedTopMargin: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[4].value", fallback: 20), geometry: __designTimeSelection(proxy, "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[5].value")).environmentObject(__designTimeSelection(self.minimizableViewState, "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value")), "#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
        
            }, "#12791.[3].[2].property.[0].[0].arg[0].value.[0]")
                      
                
        }, "#12791.[3].[2].property.[0].[0]"))
#sourceLocation()
    
        //
    }
}

typealias ContentView = MinimizableView.ContentView
typealias ContentView_Previews = MinimizableView.ContentView_Previews