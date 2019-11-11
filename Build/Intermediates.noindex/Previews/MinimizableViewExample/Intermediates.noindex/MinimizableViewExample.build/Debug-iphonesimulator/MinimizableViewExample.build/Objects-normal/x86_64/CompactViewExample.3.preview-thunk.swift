@_private(sourceFile: "CompactViewExample.swift") import MinimizableViewExample
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension CompactViewExample_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/CompactViewExample.swift", line: 30)
        AnyView(__designTimeSelection(CompactViewExample(), "#23613.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension CompactViewExample {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/CompactViewExample.swift", line: 18)
        AnyView(__designTimeSelection(GeometryReader { proxy in
             __designTimeSelection(HStack {
                    __designTimeSelection(Text(__designTimeString("#23613.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value", fallback: "Compact View")), "#23613.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0]")
             }.frame(width: __designTimeSelection(proxy.size.width, "#23613.[3].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value"), height: __designTimeSelection(proxy.size.height, "#23613.[3].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value")).onTapGesture {
                    __designTimeSelection(self.minimizableViewHandler.expand(), "#23613.[3].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value.[0]")
             }.background(__designTimeSelection(Color(.systemBlue), "#23613.[3].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value")), "#23613.[3].[1].property.[0].[0].arg[0].value.[0]")
        }, "#23613.[3].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias CompactViewExample = MinimizableViewExample.CompactViewExample
typealias CompactViewExample_Previews = MinimizableViewExample.CompactViewExample_Previews