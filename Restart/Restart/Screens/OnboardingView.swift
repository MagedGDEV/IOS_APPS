//
//  OnboardingView.swift
//  Restart
//
//  Created by Maged Alosali on 24/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80
    @State private var buttonOffset: CGFloat = 0
    @State private var isAnimating: Bool = false
    @State private var imageOffset: CGSize = .zero
    @State private var indicatorOpacity: Double = 1
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                // MARK: - HEADER
                
                Spacer()
                VStack(){
                    Text("Share.")
                        .font(.system(size:60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                        Text("""
                        It's not how much we give but
                        how much love we put into giving
                        """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
                .animation(.easeOut(duration: 1), value: isAnimating)
                // MARK: - CENTER
                
                ZStack {
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
                        .offset(x: -imageOffset.width)
                        .blur(radius: abs(imageOffset.width)/5)
                        .animation(.easeOut(duration: 1), value: imageOffset)
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .animation(.easeOut(duration: 1), value: isAnimating)
                        .offset(x: imageOffset.width * 1.2, y: 0)
                        .rotationEffect(.degrees(Double(imageOffset.width/20)))
                        .gesture(
                            DragGesture()
                                .onChanged{ gesture in
                                    if abs(imageOffset.width) <= 150{
                                        imageOffset = gesture.translation
                                        withAnimation(.linear(duration: 0.25)){
                                            indicatorOpacity = 0
                                        }
                                    }
                                    
                                }
                                .onEnded{ _ in
                                    imageOffset = .zero
                                    withAnimation(.linear(duration: 0.25)){
                                        indicatorOpacity = 1
                                    }
                                }
                        )
                        .animation(.easeOut(duration: 1), value: imageOffset)
                }
                .overlay(
                        Image(systemName: "arrow.left.and.right.circle")
                            .font(.system(size: 44, weight: .ultraLight))
                            .foregroundColor(.white)
                            .offset(y: 20)
                            .opacity(isAnimating ? 1 : 0)
                            .animation(.easeOut(duration: 1).delay(2), value: isAnimating)
                            .opacity(indicatorOpacity)
                        ,   alignment: .bottom
                )
                Spacer()
                
                // MARK: - FOOTER
                
                ZStack {
                    // 1. Background (Static)
                    Capsule()
                        .fill(.white.opacity(0.2))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    // 2. Call-To-Action (Static)
                    Text ("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    // 3. Capsule (sliding dynamic)
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: buttonOffset + 80 )
                        Spacer()
                    }
                    // 4. Circle (Draggable)
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image (systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .offset(x: buttonOffset)
                        .gesture(
                        DragGesture()
                            .onChanged{ gesture in
                                
                                if gesture.translation.width > 0 && buttonOffset <= buttonWidth - 30 {
                                    buttonOffset = gesture.translation.width
                                }
                            }.onEnded { _ in
                                withAnimation(Animation.easeIn(duration: 0.4)){
                                    if buttonOffset > buttonWidth / 2 {
                                        buttonOffset = buttonWidth - 30
                                        isOnboardingViewActive = false
                                                
                                    }
                                    else {
                                        buttonOffset = 0
                                    }
                                }
                            }
                        )
                        Spacer()
                    }
                }
                .frame(height: 80, alignment: .center)
                .padding()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : 40)
                .animation(.easeOut(duration: 1), value: isAnimating)
            }
        }.onAppear(perform: {
            isAnimating = true
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
