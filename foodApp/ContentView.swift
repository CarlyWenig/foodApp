//
//  ContentView.swift
//  foodApp
//
//  Created by Carly Wenig on 10/2/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
            NavigationStack {
                ZStack {
                    Color.purple
                        .ignoresSafeArea(.all)
                    
                    NavigationLink {
                        // destination view
                        MainPage()
                    } label: {
                        // your logo
                        Image("logo")
                            .resizable()
                            .frame(width: 250, height: 250, alignment: .center)
                        
                    }
                }
            }
            
            
         
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
