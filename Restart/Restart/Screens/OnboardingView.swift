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
                
                // MARK: - CENTER
                
                
                // MARK: - FOOTER
                
                
                
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
