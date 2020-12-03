//
//  Dots.swift
//  UI-60
//
//  Created by にゃんにゃん丸 on 2020/12/03.
//

import SwiftUI

struct Dots: View {
    @State var with = UIScreen.main.bounds.width / 2
    var body: some View {
        
        ForEach(0...10,id:\.self){index in
            
            Circle()
                .frame(width: 10, height: 10)
                .offset(x: -(with + 32) / 2)
                .rotationEffect(.init(degrees: Double(index * 24)))
            
            
            
        }
        .rotationEffect(.init(degrees: -30))
       
    }
}

