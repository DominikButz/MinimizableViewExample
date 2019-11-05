@_private(sourceFile: "CompactViewExample.swift") import MinimizableView
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension CompactViewExample_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/CustomModal/CustomModal/CompactViewExample.swift", line: 34)
        AnyView(__designTimeSelection(CompactViewExample(width: __designTimeInteger("#18764.[4].[0].property.[0].[0].arg[0].value", fallback: 300)), "#18764.[4].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension CompactViewExample {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Xcode Projects/CustomModal/CustomModal/CompactViewExample.swift", line: 24)
         AnyView(__designTimeSelection(HStack {
                __designTimeSelection(Text(__designTimeString("#18764.[3].[3].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "Compact View")), "#18764.[3].[3].property.[0].[0].arg[0].value.[0]")
            }.frame(width: __designTimeSelection(width, "#18764.[3].[3].property.[0].[0].modifier[0].arg[0].value"), height: __designTimeInteger("#18764.[3].[3].property.[0].[0].modifier[0].arg[1].value", fallback: 44)).onTapGesture {
                    self.minimizableViewState.isMinimized = false
         }.background(__designTimeSelection(Color(.systemBackground), "#18764.[3].[3].property.[0].[0].modifier[2].arg[0].value")), "#18764.[3].[3].property.[0].[0]"))
#sourceLocation()
    }
}

typealias CompactViewExample = MinimizableView.CompactViewExample
typealias CompactViewExample_Previews = MinimizableView.CompactViewExample_Previews