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
       
                VStack(alignment: .center, spacing: 0) {
       
                        VStack {
                            
                            Capsule()
                                .fill(Color.gray)
                              //  .frame(width: self.miniHandler.isMinimized == false ? 40 : 0, height: self.miniHandler.isMinimized == false ? 5 : 0)
                                .frame(width: 40, height: 5)
                               // .opacity(self.miniHandler.isMinimized == false ? 1 : 0)
                                .padding(.top, safeArea?.top ?? 0)

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

        
                        Spacer()
            
                    
                    HStack(spacing: 15){

                        if miniHandler.isMinimized == false {Spacer(minLength: 0)}
                        
                        Image("MuiMui")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: self.imageSize(proxy: proxy), height: self.imageSize(proxy: proxy))
                            .cornerRadius(15)
                            
                           
                        
                        if miniHandler.isMinimized{
                            VStack(alignment: .leading) {
                                Text("Mui Mui")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: true, vertical: false)
                                    .matchedGeometryEffect(id: "Singer", in: animationNamespaceId)
                                
                                Text("emBARKation")
                                    .fontWeight(.bold)
                                    .fixedSize(horizontal: true, vertical: false)
                                    .matchedGeometryEffect(id: "Song", in: animationNamespaceId)
                                
                             
                            }
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

        }.transition(AnyTransition.move(edge: .bottom))
      

    }
    
    var expandedControls: some View {
        VStack(spacing: 15){

            Spacer(minLength: 0)
            
            HStack{
                
                Spacer(minLength: 0)
                Text("Mui Mui")
                    .font(.title2)
                    .foregroundColor(.primary)
                    .fontWeight(.bold)
                    .matchedGeometryEffect(id: "Singer", in: animationNamespaceId)
                   // .padding(.top, 10)
                
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
                    .fixedSize(horizontal: true, vertical: false)
                    .matchedGeometryEffect(id: "Song", in: animationNamespaceId)
                
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
    
    // square shaped, so we only need the edge length
    func imageSize(proxy: GeometryProxy)->CGFloat {
        if miniHandler.isMinimized {
            return 55 + abs(self.miniHandler.draggedOffsetY) / 2
        } else {
            return proxy.size.height * 0.33
        }

    }
}


//struct ContentExample_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentExample().environmentObject(MinimizableViewHandler())
//    }
//}


