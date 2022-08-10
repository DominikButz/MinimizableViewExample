//
//  ContentListExample.swift
//  MinimizableViewExample
//
//  Created by Dominik Butz on 10/8/2022.
//  Copyright © 2022 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView

struct ContentListExample: View {
    
    static var exampleData = (0...30).map { ListDataItem(title: "Title \($0)", subtitle: "Subtitle \($0)") }
    
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @EnvironmentObject var miniHandler: MinimizableViewHandler

    var body: some View {
        GeometryReader { proxy in
       
            VStack {
                HStack {
                    Spacer()
                        if self.miniHandler.isMinimized == false {
                            Button(action: {
                                self.miniHandler.dismiss()
                            }) {
                                Image(systemName: "xmark.circle").font(.system(size: 20)).foregroundColor(.primary)
                            }.padding(.trailing, 10)
                            .frame(width: self.miniHandler.isMinimized == false ? nil : 0, height: self.miniHandler.isMinimized == false ? nil : 0)
                        }
                    }.padding(.top, 40)
         
                if self.miniHandler.isMinimized == false {
                    List(Self.exampleData) { item in
                        
                        VStack(alignment: .leading) {
                            Text(item.title).font(.headline)
                            Text(item.subtitle).font(.callout)
                        }
                        
                    }
                }
             Spacer()
            }
   

        }
        .transition(AnyTransition.move(edge: .bottom))
    }
}

struct ListDataItem: Identifiable {
    let id: UUID = UUID()
    var title: String
    var subtitle: String
    
}

struct ContentListExample_Previews: PreviewProvider {
    static var previews: some View {
        ContentListExample()
    }
}
