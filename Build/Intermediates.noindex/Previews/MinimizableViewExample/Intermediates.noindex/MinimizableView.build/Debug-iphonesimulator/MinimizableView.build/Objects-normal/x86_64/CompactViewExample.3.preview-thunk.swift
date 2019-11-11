@_private(sourceFile: "CompactViewExample.swift") import MinimizableView
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension CompactViewExample_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/CompactViewExample.swift", line: 30)
        AnyView(__designTimeSelection(CompactViewExample(), "#5769.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension CompactViewExample {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/CompactViewExample.swift", line: 18)
        AnyView(__designTimeSelection(GeometryReader { proxy in
             __designTimeSelection(HStack {
                __designTimeSelection(Text(__designTimeString("#5769.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Compact View")), "#5769.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
             }.frame(width: __designTimeSelection(proxy.size.width, "#5769.[3].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"), height: __designTimeSelection(proxy.size.height, "#5769.[3].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value")).onTapGesture {
                    __designTimeSelection(self.minimizableViewHandler.expand(), "#5769.[3].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0]")
             }.background(__designTimeSelection(Color(.secondarySystemBackground), "#5769.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value")), "#5769.[3].[1].property.[0].[0].arg[0].value.[0]")
        }, "#5769.[3].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias CompactViewExample = MinimizableView.CompactViewExample
typealias CompactViewExample_Previews = MinimizableView.CompactViewExample_Previews