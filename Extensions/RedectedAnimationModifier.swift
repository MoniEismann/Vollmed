//
//  RedectedAnimationModifier.swift
//  Vollmed
//
//  Created by Igor fe Castro Figueiredo on 21/08/24.
//

import SwiftUI

struct RedectedAnimationModifier: ViewModifier {
    
    @State private var isRedected = true
    
    func body(content: Content) -> some View {
        content
            .opacity(isRedected ? 0 : 1)
            .onAppear{
                withAnimation(Animation.easeOut(duration: 0.7).repeatForever(autoreverses: true)) {
                    self.isRedected.toggle()
                }
            }
    }
}

extension View {
    func redectedAnimation() -> some View{
        modifier(RedectedAnimationModifier())
    }
}
