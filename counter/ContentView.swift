//
//  ContentView.swift
//  counter
//
//  Created by Mike Dix on 6/26/19.
//  Copyright © 2019 Mike Dix. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView : View {
    
    var body: some View {
         VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top) //makes it seemless with the phone screen
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)  //overlapping whats above me
                .padding(.bottom, -130) //brings whats under me closer
        VStack(alignment: .leading) {
            
           
            Text("Turtle Rock")
                .font(.title)
            
            HStack (alignment: .top){
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                    Spacer() //Puts space between two text
                        Text("California")
                            .font(.subheadline)
                }
            }
            .padding() //gives details breathing room
            Spacer()
        }

    }
}


#if DEBUG //defectives
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
