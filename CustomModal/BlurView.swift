//
//  BlurView.swift
//  MinimizableViewExample
//
//  Created by Dominik Butz on 21/11/2020.
//  Copyright © 2020 Duoyun. All rights reserved.
//

import Foundation
import SwiftUI

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    func makeUIView(context: Context) -> some UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
