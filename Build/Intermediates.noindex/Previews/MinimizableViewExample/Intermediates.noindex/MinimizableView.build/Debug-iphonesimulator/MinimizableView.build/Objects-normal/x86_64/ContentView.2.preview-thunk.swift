@_private(sourceFile: "ContentView.swift") import MinimizableView
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/CustomModal/CustomModal/ContentView.swift", line: 63)
        AnyView(ContentView())
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/CustomModal/CustomModal/ContentView.swift", line: 19)
        AnyView(GeometryReader { proxy in
            ZStack {
                
                TabView(selection: self.$selectedTabIndex) {
                    
                    Button(action: {
                        
                        if self.minimizableViewState.isPresented == false {
                            self.minimizableViewState.isPresented = true
                        }
                        
                    }) { Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value", fallback: "Launch Minimizable View")).font(.headline).foregroundColor(.secondary).padding(EdgeInsets(top: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[0].value", fallback: 5), leading: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[1].value", fallback: 7), bottom: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[2].value", fallback: 5), trailing: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[2].arg[0].value.arg[3].value", fallback: 7))).background(Color.green.opacity(__designTimeFloat("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.6))).clipShape(RoundedRectangle(cornerRadius: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].modifier[4].arg[0].value.arg[0].value", fallback: 3))).padding() }
                        .tabItem {
                            Image(systemName: __designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[0].arg[0].value", fallback: "chevron.up.square.fill"))
                            Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.[1].arg[0].value", fallback: "Main View"))
                    }.tag(__designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[0].modifier[1].arg[0].value", fallback: 0))
                    
                    Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].arg[0].value", fallback: "More stuff")).tabItem {
                        Image(systemName: __designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[0].arg[0].value", fallback: "dot.square.fill"))
                        Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[0].arg[0].value.[1].arg[0].value", fallback: "2nd View"))
                    }.tag(__designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[1].modifier[1].arg[0].value", fallback: 1))
                    
                    Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].arg[0].value", fallback: "Even more stuff")).tabItem {
                        Image(systemName: __designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[0].arg[0].value", fallback: "square.split.2x1.fill"))
                        Text(__designTimeString("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[0].arg[0].value.[1].arg[0].value", fallback: "3rd View"))
                    }.tag(__designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[1].value.[2].modifier[1].arg[0].value", fallback: 2))
                    
                    
                }
               

                MinimizableView(content: AnyView(ContentExample()), compactView: AnyView(CompactViewExample(width: proxy.size.width)),  minimizedHeight: __designTimeFloat("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[2].value", fallback: 44.0), bottomMargin: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[3].value", fallback: 58), expandedTopMargin: __designTimeInteger("#12791.[3].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[4].value", fallback: 20), geometry: proxy).environmentObject(self.minimizableViewState)
        
            }
                      
                
        })
#sourceLocation()
    
        //
    }
}

typealias ContentView = MinimizableView.ContentView
typealias ContentView_Previews = MinimizableView.ContentView_Previews