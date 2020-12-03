//
//  Home.swift
//  UI-60
//
//  Created by にゃんにゃん丸 on 2020/12/03.
//

import SwiftUI

struct Home: View {
    
    var top = UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
    
    @State var width = UIScreen.main.bounds.width / 2
    
    @State var anleg : Double = 0
    
    @State var on = false
    
    @State var from : Date = Date()
    @State var to : Date = Date()
    
    
    @State var small = UIScreen.main.bounds.height < 750
    var body: some View {
        
        
        VStack{
            
            ScrollView(small ? .vertical : .init(), showsIndicators: false, content: {
                
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .top), content: {
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: small ? 150 : nil, height: small ? 150 : nil)
                    
                    
                    
                    HStack{
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                            
                            Image(systemName: "chevron.left")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                        }
                        
                        Spacer()
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                            
                            Image(systemName: "gear")
                                .font(.title2)
                                .foregroundColor(.black)
                            
                        }
                        
                    }
                    .padding()
                    .padding(.top,top)
                    
                })
                .padding(.bottom)
                
                
                
                Text("StarBucks")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding()
                
                ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
                    
                    
                    ZStack{
                        
                        
                        Circle()
                            .fill(Color.gray.opacity(0.15))
                            .frame(width: width, height: width)
                        
                        
                        ZStack{
                            
                            Circle()
                                .fill(Color.white)
                                .frame(width: width - 45, height: width - 45)
                                .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: -5)
                                .shadow(color: Color.black.opacity(0.15), radius: 5, x: -5, y: -5)
                                .rotationEffect(.init(degrees: anleg))
                            
                            Circle()
                                .fill(Color("c1"))
                                .frame(width: 20, height: 20)
                                .offset(x: (width - 100) / 2)
                                .gesture(DragGesture(minimumDistance:0).onChanged(onChanged(value:)))
                                .rotationEffect(.init(degrees: anleg))
                                .rotationEffect(.init(degrees: -210))
                            
                            
                        }
                        Dots()
                        
                        
                    }
                    
                    HStack{
                        
                        Text("st")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("bx")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                    }
                    .padding(.bottom,30)
                    
                    
                    
                    
                    
                    
                })
                .padding()
                .padding(.top)
                
                
                HStack{
                    
                    HStack{
                        
                        Spacer()
                        
                        Text("Switch")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Toggle("STAR", isOn: $on)
                            .labelsHidden()
                            .toggleStyle(SwitchToggleStyle(tint: Color("c1")))
                        
                        
                        
                        
                        
                    }
                    .padding(.vertical)
                    .padding(.horizontal,20)
                    .background(BlurView().cornerRadius(20))
                    
                    
                }
                .padding()
                
                
                VStack(alignment:.leading,spacing : 20,content:{
                    
                    
                    Text("Schedule")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                    
                    Text("From")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                    HStack(spacing:10){
                        
                        DatePicker("", selection: $from, displayedComponents: [.date])
                            .labelsHidden()
                            .accentColor(.red)
                        
                        Text("to")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        
                        DatePicker("", selection: $to, displayedComponents: [.hourAndMinute])
                            .labelsHidden()
                            .accentColor(.purple)
                        
                        
                    }
                    
                    
                    
                    
                    
                    
                })
                .padding(.horizontal)
                .frame(maxWidth: .infinity,alignment: .leading)
                
                
            })
            
            
            
            
            
            ZStack{
                
                
                HStack{
                    
                    
                    Button(action: {}){
                        
                        
                        Image(systemName: "house")
                            .font(.system(size: 25))
                            .foregroundColor(Color("c1"))
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
                        
                        
                        
                        
                        
                    }
                    
                    Spacer()
                    
                    Button(action: {}){
                        
                        
                        Image(systemName: "person")
                            .font(.system(size: 25))
                            .foregroundColor(Color("c1"))
                            .padding()
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
                        
                        
                        
                        
                        
                    }
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    
                    Image(systemName: "plus")
                        .font(.system(size: 25))
                        .foregroundColor(Color("c1"))
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
                    
                    
                    
                    
                    
                    
                })
                .offset(y: 10)
                
                
                
                
            }
            .padding(.horizontal)
            .padding(.top,small ? 0 : 25)
            .padding(.bottom,top == 0 ? 15 : 0)
            
            
            
            
            
            
            
            
            
            
        }
        .ignoresSafeArea(.all, edges: .top)
        .background(
            
            ZStack{
                
                Color("c1")
                Color.white.clipShape(CustomShape())
                    .rotationEffect(.init(degrees: 180))
                
            }
            .ignoresSafeArea(.all, edges: .all)
            
            
            
            
        )
        
    }
    
    
    func onChanged(value:DragGesture.Value){
        
        let translation = value.location
        let vector = CGVector(dx: translation.x, dy: translation.y)
        let radius = atan2(vector.dx - 10, vector.dy - 10)
        
        
        var angle = radius * 180 / .pi
        
        if angle < 0 {angle = 360 + angle}
        
        
        
        
        if angle <= 240{
            
            self.anleg = Double(angle)
            
        }
        
        
        
        
        
    }
    
}


