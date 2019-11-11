@_private(sourceFile: "ContentExample.swift") import MinimizableView
import MinimizableView
import SwiftUI
import SwiftUI

extension ContentExample_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentExample.swift", line: 82)
        AnyView(ContentExample().environmentObject(MinimizableViewHandler()))
#sourceLocation()
    }
}

extension ContentExample {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/Dominik/Documents/Programmieren/Libraries/MinimizableViewExample/CustomModal/ContentExample.swift", line: 20)
        AnyView(GeometryReader { proxy in

                VStack(alignment: .center, spacing: __designTimeFloat("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[1].value", fallback: 5.0)) {
                      
                    TopDelimiterAreaView(areaWidth: proxy.size.width).onTapGesture {
                         self.minimizableViewHandler.isMinimized.toggle()
                    }
                    
                        HStack {
                                Spacer()
                                Button(action: {
                                    self.minimizableViewHandler.dismiss()
                                }) {
                                    Image(systemName: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "xmark.circle")).font(.system(size: __designTimeInteger("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 20)))
                                }.padding(__designTimeInteger("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].arg[0].value.[1].modifier[0].arg[0].value", fallback: 5))
                        }.background(Color(.secondarySystemBackground))
                    .modifier(VerticalDragGesture(translationHeightTriggerValue: __designTimeInteger("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[1].modifier[1].arg[0].value.arg[0].value", fallback: 30))).environmentObject(self.minimizableViewHandler)
                        
                        List(self.listContent, id: \.self) { item in
                            Text(item)
                        }.frame(width: proxy.size.width - 10).colorMultiply(Color(.secondarySystemBackground))
                    
                    if self.minimizableViewHandler.isMinimized == false  {
                          HStack(alignment: .bottom) {
                              
                              Spacer()
                              
                              // cancel button
                              Button(action: {
                                    self.minimizableViewHandler.dismiss()
                                      }) {
                                          VerticalSymbolTextButtonView(imageSystemName: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "xmark.circle"), title:__designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0].arg[1].value.[0].value", fallback: "Abort"), foregroundColor: .red, size: __designTimeFloat("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[1].arg[1].value.[0].arg[3].value", fallback: 25.0))
                    
                              }
                              
                              Spacer()
                                      // Add  button
                                      Button(action: {
                                                  print(__designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[0].value.[0].arg[0].value.[0].value", fallback: "add button tapped"))
                                          
                                              }) {

                                          VerticalSymbolTextButtonView(imageSystemName: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0].arg[0].value.[0].value", fallback: "plus.circle"), title: __designTimeString("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0].arg[1].value.[0].value", fallback: "Add"), foregroundColor: .accentColor, size: __designTimeFloat("#5782.[2].[2].property.[0].[0].arg[0].value.[0].arg[2].value.[3].[0].[0].arg[1].value.[3].arg[1].value.[0].arg[3].value", fallback: 25.0))
                                      }
                              

                                  Spacer()
                               
        
                              }
                          }

                    }
                

        })
#sourceLocation()
    }
}

typealias ContentExample = MinimizableView.ContentExample
typealias ContentExample_Previews = MinimizableView.ContentExample_Previews