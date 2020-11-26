//
//MinimizableView Example
//
//  Created by Dominik Butz on 6/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI
import MinimizableView

struct ContentExample: View {
    
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @EnvironmentObject var miniHandler: MinimizableViewHandler
    // Volume Slider...
    
    @State var volume : CGFloat = 0

    var animationNamespaceId: Namespace.ID

    var body: some View {
        GeometryReader { proxy in

                VStack(alignment: .center, spacing: 5.0) {
                   
               //     if self.miniHandler.isMinimized == false {
                        VStack {
                            
                            Capsule()
                                .fill(Color.gray)
                                .frame(width: self.miniHandler.isMinimized == false ? 40 : 0, height: self.miniHandler.isMinimized == false ? 5 : 0)
                                .opacity(self.miniHandler.isMinimized == false ? 1 : 0)
                         
                            HStack {
                                
                                Button(action: {
                                    self.miniHandler.minimize()
                                }) {
                                    Image(systemName: "chevron.down.circle").font(.system(size: 20)).foregroundColor(.primary)
                                }.padding(.horizontal, 10)
                                .frame(width: self.miniHandler.isMinimized == false ? nil : 0, height: self.miniHandler.isMinimized == false ? nil : 0)
                                
                                    Spacer()
                                
                                    Button(action: {
                                        self.miniHandler.dismiss()
                                    }) {
                                        Image(systemName: "xmark.circle").font(.system(size: 20)).foregroundColor(.primary)
                                    }.padding(.trailing, 10)
                                    .frame(width: self.miniHandler.isMinimized == false ? nil : 0, height: self.miniHandler.isMinimized == false ? nil : 0)
                            }.frame(width: self.miniHandler.isMinimized == false ? nil : 0, height: self.miniHandler.isMinimized == false ? nil : 0)
                        }.frame(width: self.miniHandler.isMinimized == false ? nil : 0, height: self.miniHandler.isMinimized == false ? nil : 0).opacity(self.miniHandler.isMinimized ? 0 : 1)
                        //.transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.4)))
                        
             //       }
                    
                  Spacer()
                    
                    HStack(spacing: 15){

                        if miniHandler.isMinimized == false {Spacer(minLength: 0)}
                        
                        Image("MuiMui")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: miniHandler.isMinimized ? 55 : proxy.size.height * 0.33, height: miniHandler.isMinimized ? 55 : proxy.size.height * 0.33)
                            .cornerRadius(15)
                        
                        if miniHandler.isMinimized{
                            
                            Text("Mui Mui")
                                .font(.title2)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Label", in: animationNamespaceId)
                            
                            Spacer(minLength: 0)
                            self.minimizedControls
                        } else {
                            Spacer(minLength: 0)
                        }
                    }
                    .padding(.horizontal)
                    
                    self.expandedControls
                    
                    Spacer()


                }.onAppear {
                    
                    print("appearing & presenting")
                    
                    
                    self.miniHandler.onDismissal = {
                        print("dismissing")
                    }
                    
                    self.miniHandler.onExpansion = {
                        
                        print("expanding")
                    }

                    self.miniHandler.onMinimization = {
                        print("contracting")
                    }
                    
              
            }
                

        }
        .transition(AnyTransition.move(edge: .bottom))
        //   .verticalDragGesture(translationHeightTriggerValue: 80)
    }
    
    var expandedControls: some View {
        VStack(spacing: 15){

           // Spacer(minLength: 0)
            
            HStack{
                
                if miniHandler.isMinimized == false {
                    Spacer(minLength: 0)
                    Text("Mui Mui")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .fontWeight(.bold)
                       .matchedGeometryEffect(id: "Label", in: animationNamespaceId)
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    
                    Image(systemName: "ellipsis.circle")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding()
            .padding(.top,20)
            

            HStack{
                
                Capsule()
                    .fill(
                    
                        LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7),Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(height: 4)
                
                Text("emBARKation")
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Capsule()
                    .fill(
                    
                        LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.1),Color.primary.opacity(0.7)]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(height: 4)
            }
            .padding()
            
            // Stop Button...
            
            Button(action: {}) {
                
                Image(systemName: "stop.fill")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
            }
            .padding()
            
            Spacer(minLength: 0)
            
            HStack(spacing: 15){
                
                Image(systemName: "speaker.fill")
                
                Slider(value: $volume)
                
                Image(systemName: "speaker.wave.2.fill")
            }
            .padding()
            
            HStack(spacing: 22){
//
//                Button(action: {}) {
//
//                    Image(systemName: "arrow.up.message")
//                        .font(.title2)
//                        .foregroundColor(.primary)
//                }
                
                Button(action: {}) {
                    
                    Image(systemName: "airplayaudio")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                
                Button(action: {}) {
                    
                    Image(systemName: "list.bullet")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
        }
        .frame(height: self.miniHandler.isMinimized ? 0 : nil)
        .opacity(self.miniHandler.isMinimized ? 0 : 1)
    }
    
    var minimizedControls: some View {
        Group {
            Button(action: {}, label: {
                
                Image(systemName: "play.fill")
                    .font(.title2)
                    .foregroundColor(.primary)
            })
            
            Button(action: {}, label: {
                
                Image(systemName: "forward.fill")
                    .font(.title2)
                    .foregroundColor(.primary)
            })
        }
    }
}


//struct ContentExample_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentExample().environmentObject(MinimizableViewHandler())
//    }
//}


