//
//  Scroll.swift
//  Study_Material_Swift_learning
//
//  Created by sanjeevan on 24/01/25.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        Text("jeevith")
        GeometryReader { geometry in
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<10) { _ in
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(0..<10) { _ in
                                        VStack {
                                            Image("fedhar")
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                                .clipShape(Circle())
                                        }
                                    }
                                }
                            }
                            .padding()
                        }
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(0..<10) { _ in
                                        VStack {
                                            Image("blode bard")
                                                .resizable()
                                                .frame(width: 100, height: 100)
                                                .clipShape(Circle())
                                        }
                                    }
                                }
                            }
                            .padding()
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)         }
    }

}

#Preview {
    Scroll()
}
