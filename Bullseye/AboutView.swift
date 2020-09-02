//
//  AboutView.swift
//  Bullseye
//
//  Created by Kelvin Lee on 2020-09-01.
//  Copyright © 2020 Kelvin Lee. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    
    let infoColor = Color(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)

    struct HeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding([.top, .bottom], 20)
        }
    }

    struct TextStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
                .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding([.horizontal], 60)
                .padding([.bottom], 20)
        }
    }
    
    var body: some View {
        Group {
            VStack {
                Text("🎯 Bullseye 🎯").modifier(HeadingStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by draggin a slider.").modifier(TextStyle())
            }.navigationBarTitle("About Bullseye")
            .background(infoColor)
        }.background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}
