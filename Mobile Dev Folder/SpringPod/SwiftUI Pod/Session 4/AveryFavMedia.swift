//
//  AboutAvery.swift
//  SpringPod
//
//  Created by Avery on 4/30/26.
//

import SwiftUI

struct AveryFavMedia: View {
    var body: some View {
        VStack{
            Text("I'm on my school's volleyball team")
            Image("volleyball")
            Spacer()
            Text("I also draw a bit and other creative endeavors")
            Image("pencil")
        }
        
    }
}

#Preview {
    AboutAvery()
}
