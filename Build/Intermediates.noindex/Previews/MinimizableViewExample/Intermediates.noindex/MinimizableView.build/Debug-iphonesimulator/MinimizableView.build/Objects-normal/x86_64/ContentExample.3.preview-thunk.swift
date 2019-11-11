@_private(sourceFile: "ContentExample.swift") import MinimizableView
import MinimizableView
import SwiftUI
import SwiftUI

extension ContentExample_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentExample.swift", line: 82)
        AnyView(__designTimeSelection(ContentExample().environmentObject(__designTimeSelection(MinimizableViewHandler(), "#5782.[3].[0].property.[0].[0].modifier[0].arg[0].value")), "#5782.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentExample {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentExample.swift", line: 20)
        AnyView(__designTimeSelection(GeometryReader { proxy in

                __designTimeSelection(VStack(alignment: .center, spacing: __designTimeFloat("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: 5.0)) {
                      
                    __designTimeSelection(TopDelimiterAreaView(areaWidth: __designTimeSelection(proxy.size.width, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value")).onTapGesture {
                         __designTimeSelection(self.minimizableViewHandler.isMinimized.toggle(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[0].modifier[0].arg[0].value.[0]")
                    }, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[0]")
                    
                        __designTimeSelection(HStack {
                                __designTimeSelection(Spacer(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[0]")
                                __designTimeSelection(Button(action: {
                                    __designTimeSelection(self.minimizableViewHandler.dismiss(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].arg[0].value.[0]")
                                }) {
                                    __designTimeSelection(Image(systemName: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "xmark.circle")).font(.system(size: __designTimeInteger("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20))), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].arg[1].value.[0]")
                                }.padding(__designTimeInteger("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5)), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1]")
                        }.background(__designTimeSelection(Color(.secondarySystemBackground), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[0].arg[0].value"))
                    .modifier(__designTimeSelection(VerticalDragGesture(translationHeightTriggerValue: __designTimeInteger("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 30)), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[1].arg[0].value")).environmentObject(__designTimeSelection(self.minimizableViewHandler, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[2].arg[0].value")), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1]")
                        
                        __designTimeSelection(List(__designTimeSelection(self.listContent, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[2].arg[0].value"), id: \.self) { item in
                            __designTimeSelection(Text(__designTimeSelection(item, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[2].arg[2].value.[0].arg[0].value")), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[2].arg[2].value.[0]")
                        }.frame(width: proxy.size.width - 10).colorMultiply(__designTimeSelection(Color(.secondarySystemBackground), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[2].modifier[1].arg[0].value")), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[2]")
                    
                    if self.minimizableViewHandler.isMinimized == false  {
                          __designTimeSelection(HStack(alignment: .bottom) {
                              
                              __designTimeSelection(Spacer(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[0]")
                              
                              // cancel button
                              __designTimeSelection(Button(action: {
                                    __designTimeSelection(self.minimizableViewHandler.dismiss(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[0].value.[0]")
                                      }) {
                                          __designTimeSelection(VerticalSymbolTextButtonView(imageSystemName: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "xmark.circle"), title:__designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[0].value", fallback: "Abort"), foregroundColor: .red, size: __designTimeFloat("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0].arg[3].value", fallback: 25.0)), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0]")
                    
                              }, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1]")
                              
                              __designTimeSelection(Spacer(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[2]")
                                      // Add  button
                                      __designTimeSelection(Button(action: {
                                                  __designTimeSelection(print(__designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "add button tapped")), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[0].value.[0]")
                                          
                                              }) {

                                          __designTimeSelection(VerticalSymbolTextButtonView(imageSystemName: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "plus.circle"), title: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0].arg[1].value.[0].value", fallback: "Add"), foregroundColor: .accentColor, size: __designTimeFloat("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0].arg[3].value", fallback: 25.0)), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0]")
                                      }, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3]")
                              

                                  __designTimeSelection(Spacer(), "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[4]")
                               
        
                              }, "#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0]")
                          }

                    }, "#5782.[2].[2].property.[0].[0].arg[0].value.[0]")
                

        }, "#5782.[2].[2].property.[0].[0]"))
#sourceLocation()
    }
}

typealias ContentExample = MinimizableView.ContentExample
typealias ContentExample_Previews = MinimizableView.ContentExample_Previews