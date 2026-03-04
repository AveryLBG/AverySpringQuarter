//
//  AccessibilityModifiers.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/13/25.
//

import SwiftUI

struct AccessibilityModifiers: View {
    var body: some View {
        
        ///1. Within the App.swift file, ensure the WindowGroup contains the View you want the App to launch
        ///2. Run the app/ Start the active scheme/ Press the play button
        ///3. try the VoiceOver system through Settings > Accessibility > VoiceOver
        
        
        VStack{
            Text("Happy Birthday! 🥳")
                .accessibilityLabel("Happy Birthday") // control what VoiceOver reads
          
            Image(systemName: "balloon")
                .accessibility(label: Text("An icon of a balloon"))
            
            Image("smile")
                .accessibilityHidden(true) //VoiceOver will ignore
            
            Image(decorative: "smile")
            // Alternatively, we also can use Image(decorative:) to make our image invisible to VoiceOver
            
            
        }
            .font(.largeTitle)
        
    }
}

#Preview {
    AccessibilityModifiers()
}


// Retrieved from https://www.codecademy.com/resources/docs/swiftui/accessibility

// Retrieved from https://blog.stackademic.com/accessibility-modifiers-in-swiftui-787798681e0a

//Retrieved from https://medium.com/@crissyjoshua/ios-simulator-accessibility-inspector-a-deep-dive-6b6f9fa5fe18
