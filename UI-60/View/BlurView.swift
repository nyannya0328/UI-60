//
//  BlurView.swift
//  UI-60
//
//  Created by にゃんにゃん丸 on 2020/12/03.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        return view
        
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
   
}

