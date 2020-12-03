//
//  CustomShape.swift
//  UI-60
//
//  Created by にゃんにゃん丸 on 2020/12/03.
//

import SwiftUI

struct CustomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            
            let center = rect.width / 2
            let bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 15
            
            
            path.move(to: CGPoint(x: center - 150, y: 0))
            
            let to1 = CGPoint(x: center, y: bottom + 70)
            let cont1 = CGPoint(x: center - 70, y: 0)
            let cont2 = CGPoint(x: center - 70, y: bottom + 70)
            
            let to2 = CGPoint(x: center + 150, y: 0)
            let cont3 = CGPoint(x: center + 70, y: bottom + 70)
            let cont4 = CGPoint(x: center + 70, y: 0)
            
            path.addCurve(to: to1, control1: cont1, control2: cont2)
            path.addCurve(to: to2, control1: cont3, control2: cont4)
            
        }
    }
    
    
}

