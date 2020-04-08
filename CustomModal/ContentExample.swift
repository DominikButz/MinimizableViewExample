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
    
    var listContent:[String] {
        var content = [String]()
        for i in 0..<20 {
            let text = "Content \(i)"
            content.append(text)
        }
       return content
        
    }
    

    
    var body: some View {
        GeometryReader { proxy in

                VStack(alignment: .center, spacing: 5.0) {
                      
                    TopDelimiterAreaView(areaWidth: proxy.size.width).onTapGesture {
                         self.minimizableViewHandler.toggleExpansionState()
                    }
                    
                        HStack {
                                Spacer()
                                Button(action: {
                                    self.minimizableViewHandler.dismiss()
                                }) {
                                    Image(systemName: "xmark.circle").font(.system(size: 20))
                                }.padding(.trailing, 8)
                        }.background(Color(.secondarySystemBackground)).verticalDragGesture(translationHeightTriggerValue: 30)

                        List(self.listContent, id: \.self) { item in
                            Text(item)
                        }.frame(width: proxy.size.width - 10).colorMultiply(Color(.secondarySystemBackground))
                    
                 //   if self.minimizableViewHandler.isMinimized == false  {
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
                       //   }

                }.onAppear {
                    
                    print("appearing")
                    
                    self.minimizableViewHandler.onPresentation = {
                          print("presenting")
                      }
                    
                    self.minimizableViewHandler.onDismissal = {
                        print("dismissing")
                    }
                    
                    self.minimizableViewHandler.onExpansion = {
                        
                        print("expanding")
                    }

                    self.minimizableViewHandler.onMinimization = {
                        print("contracting")
                    }
                    
              
            }
                

        }
    }
}


struct ContentExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentExample().environmentObject(MinimizableViewHandler())
    }
}


