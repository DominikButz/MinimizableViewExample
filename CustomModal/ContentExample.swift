//
//MinimizableView Example
//
//  Created by Dominik Butz on 6/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView

struct ContentExample: View {
    
    @EnvironmentObject var minimizableViewHandler: MinimizableViewHandler
    
    var listContent:[String] = ["Text0", "Text1","Text2","Text3","Text4","Text5","Text6","Text7","Text8","Text9", "Text10","Text11","Text12","Text13","Text14" ]
    
    var body: some View {
        GeometryReader { proxy in

                VStack(alignment: .center, spacing: 5.0) {

                        HStack {
                                Spacer()
                                Button(action: {
                                    self.minimizableViewHandler.dismiss()
                                }) {
                                    Image(systemName: "xmark.circle").font(.system(size: 20))
                                }.padding(5)
                        }
                        
                        List(self.listContent, id: \.self) { item in
                            Text(item)
                        }.frame(width: proxy.size.width - 10)
                    
                    if self.minimizableViewHandler.isMinimized == false  {
                          HStack(alignment: .bottom) {
                              
                              Spacer()
                              
                              // cancel button
                              Button(action: {
                                    self.minimizableViewHandler.dismiss()
                                      }) {
                                          VerticalSymbolTextButtonView(imageSystemName: "xmark.circle", title:"Abort", foregroundColor: .red, size: 25.0)
                    
                              }
                              
                              Spacer()
                                      // Add  button
                                      Button(action: {
                                                  print("add button tapped")
                                          
                                              }) {

                                          VerticalSymbolTextButtonView(imageSystemName: "plus.circle", title: "Add", foregroundColor: .accentColor, size: 25.0)
                                      }
                              

                                  Spacer()
                               
        
                              }
                          }

                }
                

        }
    }
}




