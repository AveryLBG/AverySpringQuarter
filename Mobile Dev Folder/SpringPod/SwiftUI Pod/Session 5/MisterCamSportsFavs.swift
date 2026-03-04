//
//  MisterCamSportsFavs.swift
//  SwiftUI Pod
//
//  Created by Cameron Warner on 3/11/25.
//

import SwiftUI

struct MisterCamSportsFavs: View {
    var body: some View {
        NavigationStack{
            VStack{
                HStack  {
                    Image(systemName: "figure.walk")
                    Text("Cam's Sport Teams")
                        .font(.largeTitle)
                        .bold()
                    Image(systemName: "figure.equestrian.sports")
                    
                }// End of HStack
                Divider()
                    .padding()
                
                ScrollView() {
                    Text("The Hidden Genius Project trains and mentors Black male youth in technology creation, entrepreneurship, and leadership skills to transform their lives and communities.")
                        .padding()
                        .italic()
                        .font(.headline)
                    
                    Text("""
                    Mr. Cam enjoys sports. He watches backetball; G-OKC! During the football season you can hear him screaming, "How 'Bout Dem Cowboys!" Other than that he roots for his hometeams, St. Louis Cardnials and the St. Louis Blues.  Did you know STL also has a scoccer team now too?! 
                    """)
                    .padding()
                } // End of ScrollView
                
             
                Section{
                    Image("OKC")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Oklahoma City Thunder")
                        .font(.caption)
                } //End of Section
                
                Image("Cowboys")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("How 'Bout Dem Cowboys")
                    .font(.caption)
                
                Image("STLSports")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            }// End of VStack
        }// End of NavStack
    }
}

#Preview {
    MisterCamSportsFavs()
}
