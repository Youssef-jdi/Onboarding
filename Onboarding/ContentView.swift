//
//  ContentView.swift
//  Onboarding
//
//  Created by YellowIT on 2/7/2021.
//

import SwiftUI

struct ContentView: View {
    @State var step = 1
    
    var body: some View {
        ZStack {
            /// - background color
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
                .ignoresSafeArea()
            
            Rectangle()
                .fill(Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
                .scaleEffect(1.4)
                .rotationEffect(.degrees(-15))
                .offset(x: -100, y: 300)
            
            VStack(spacing: 30) {
                Text("Welcome To")
                    .font(.largeTitle)
                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    // .padding(.top)
                
                Text("SwiftUI Animations")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                
                GeometryReader { gr in
                    HStack {
                        VStack(spacing: 0) {
                            Image("woman")
                                .resizable()
                                .frame(width: gr.frame(in: .global).width,
                                       height: 300)
                            Text("😡😡😡😡😡😡😡😡")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: gr.frame(in: .global).width, height: 100)
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 5).delay(0.1))
                        }.frame(width: gr.frame(in: .global).width)
                        
                        VStack(spacing: 0) {
                            Image("cat")
                                .resizable()
                                .frame(width: gr.frame(in: .global).width,
                                       height: 300)
                            Text("🥱🥱🥱🥱🥱🥱🥱🥱")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: gr.frame(in: .global).width, height: 100)
                                .animation(Animation.interpolatingSpring(stiffness: 40, damping: 5).delay(0.1))
                        }.frame(width: gr.frame(in: .global).width)
                    }
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .font(.title)
                    .frame(width: gr.frame(in: .global).width * 2)
                    .frame(maxHeight: .infinity)
                    .offset(x: step == 1 ? 0 : -gr.frame(in: .global).width)
                    .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                }
                
                HStack(spacing: 20) {
                    Button(action: { self.step = 1 }, label: {
                        Text("1")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().shadow(radius: 10))
                            .scaleEffect(self.step == 1 ? 1 : 0.65)
                    })
                    
                    Button(action: { self.step = 2 }, label: {
                        Text("2")
                            .foregroundColor(.white)
                            .padding()
                            .background(Circle().shadow(radius: 10))
                            .scaleEffect(self.step == 2 ? 1 : 0.65)
                    })
                }
                .animation(.spring(response: 0.4, dampingFraction: 0.5))
                .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
