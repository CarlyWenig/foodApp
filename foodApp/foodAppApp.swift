//
//  foodAppApp.swift
//  foodApp
//
//  Created by Carly Wenig on 10/2/22.
//

import SwiftUI

@main
struct foodAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


struct Event : Identifiable {
    var id = UUID()
    var nameRest : String
    var description : String
    var time : String
    var contactinfo : String
}

var exampleEvent = Event(nameRest: "Mochinut", description: "grab a donut", time: "October 25th, 6:00 A.M", contactinfo: "phone #: 732-252-8878")
var exampleEvents = [exampleEvent]

struct MainPage: View {
    @State var events = exampleEvents
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            NavigationStack {
                NavigationLink {
                    // destination view
                    AddEvent()
                } label: {
                    Image(systemName : "plus.circle")
                        .foregroundColor(.pink)
                }
            }
            .frame(width: 350, height: 30, alignment: .topTrailing)

            
            HStack {
                List($events) {
                    $event in
                    Button {
                        // do something
                    } label: {
                        Image(systemName: "fork.knife")
                            .foregroundColor(.pink)
                    }
                    
                    Text(event.nameRest)
                        .font(.headline)
                    
                    Spacer()
                    
                    Text(event.time)
                        .font(.system(.caption, design: .monospaced, weight: .regular))
                        .foregroundColor(.secondary)
                    
                    Text(event.description)
                        .font(.headline)
                    
                    
                    Text(event.contactinfo)
                        .font(.headline)
                    
                    
                }
            }
        
                
            }
  
        }
        
    }
    

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
