//
//  MinimizableView.swift
//  CustomModal
//
//  Created by Dominik Butz on 7/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI

class MinimizableViewState: ObservableObject {
    @Published var isPresented: Bool = false
    @Published var isMinimized: Bool = false
}


struct MinimizableView: View {
    
    @EnvironmentObject var minimizableViewState: MinimizableViewState
    
     @State var draggedOffset = CGSize.zero
    
     let minimizedHeight: CGFloat
     
     func offsetY()->CGFloat {
         
        if self.minimizableViewState.isPresented == false {
             return UIScreen.main.bounds.height
         } else {
             // is presenting
             return self.draggedOffset.height

         }

     }
     
     func frameHeight(geometry: GeometryProxy)->CGFloat {
         
        if self.minimizableViewState.isMinimized {
            return self.minimizedHeight
         } else {
             return geometry.size.height
         }
     }
    
    func positionY()->CGFloat {
        self.minimizableViewState.isMinimized ? geometry.size.height - 66 :  geometry.size.height / 2
    }
     
    
    var contentView:  AnyView
    var compactView: AnyView
    var geometry: GeometryProxy
    
    init<V>(content: V, compactView: V, minimizedHeight: CGFloat,  geometry: GeometryProxy) where V: View {
        
        self.contentView = AnyView(content)
        self.compactView = AnyView(compactView)
        self.minimizedHeight = minimizedHeight
        self.geometry = geometry
   
    }
    
    var body: some View {
        VStack {
            
          
            Capsule().fill(Color.gray).frame(width: 40, height: 5, alignment: .top).onTapGesture {
                self.minimizableViewState.isMinimized.toggle()
            }
            
            ZStack(alignment: .top) {

                self.contentView
                if self.minimizableViewState.isMinimized {
                    self.compactView.animation(.easeInOut(duration: 0.5)).environmentObject(self.minimizableViewState)
                }
            }
        }.background( RoundedRectangle(cornerRadius: 8)
            .foregroundColor(Color(UIColor.systemBackground)).shadow(color:  Color(.systemGray3), radius: 5, x: 0, y: -5))
        
        .frame(
            width: geometry.size.width ,
            height: self.frameHeight(geometry: geometry))
        .position(CGPoint(x: geometry.size.width / 2, y: self.positionY()))
        .offset(y: self.offsetY())
        .animation(.spring())
        .gesture(DragGesture().onChanged({ (value) in
            
            if self.minimizableViewState.isMinimized == false  {
                if value.translation.height > 0 {
                    self.draggedOffset = value.translation
                    
                    if value.translation.height > 80 {
                        self.minimizableViewState.isMinimized = true
                    }
                }
            } else {
                
                if value.translation.height < 0 {
                    self.draggedOffset = value.translation
                    if value.translation.height < -100 {
                        self.minimizableViewState.isMinimized = false
                    }
                }
            }
            
        }).onEnded({ (value) in
            self.draggedOffset = CGSize.zero

        }))
        
    }
}



