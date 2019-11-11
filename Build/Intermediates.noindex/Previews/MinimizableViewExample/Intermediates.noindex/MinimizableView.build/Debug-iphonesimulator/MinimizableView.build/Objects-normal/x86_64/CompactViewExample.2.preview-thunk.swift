@_private(sourceFile: "CompactViewExample.swift") import MinimizableView
import MinimizableView
import Combine
import SwiftUI
import SwiftUI

extension CompactViewExample_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/CompactViewExample.swift", line: 30)
        AnyView(CompactViewExample())
#sourceLocation()
    }
}

extension CompactViewExample {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/CompactViewExample.swift", line: 18)
        AnyView(GeometryReader { proxy in
             HStack {
                Text(__designTimeString("#5769.[3].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].arg[0].value.[0].value", fallback: "Compact View"))
             }.frame(width: proxy.size.width, height: proxy.size.height).onTapGesture {
                    self.minimizableViewHandler.expand()
             }.background(Color(.secondarySystemBackground))
        })
#sourceLocation()
    }
}

typealias CompactViewExample = MinimizableView.CompactViewExample
typealias CompactViewExample_Previews = MinimizableView.CompactViewExample_Previews