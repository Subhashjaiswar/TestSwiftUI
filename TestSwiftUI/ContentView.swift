//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Harsh on 23/04/24.
//

import SwiftUI

struct TVShow: Identifiable {
    var id: String { name }
    let name: String
}

struct Animal: Identifiable {
    var id = UUID()
    var name : String
}

struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName : String
    var animals : [Animal]
}

struct ContentView: View {
    @State private var showingAlert = false
    @State private var selectedShow: TVShow?
    
    let animalGroups = [
        AnimalGroup(groupName: "Pets", animals: [
            Animal(name: "Dog"),
            Animal(name: "Cat"),
            Animal(name: "Parrot"),
            Animal(name: "Mouse")
        ]),
        AnimalGroup(groupName: "Farm", animals: [
            Animal(name: "Cow"),
            Animal(name: "Horse"),
            Animal(name: "Goat"),
            Animal(name: "Sheep"),
        ]),
        AnimalGroup(groupName: "Critters", animals: [
            Animal(name: "Firefly"),
            Animal(name: "Spider"),
            Animal(name: "Ant"),
            Animal(name: "Squirrel"),
        ])
    ]

    var body: some View {
        NavigationView{
       // NavigationStack {
        List {
            //HStack{
                //VStack{
                    ForEach(animalGroups) { animalGroup in
                        Section(header: Text(animalGroup.groupName)) {
                            ForEach(animalGroup.animals) { animal in
                                Text(animal.name)
                            }
                        }
                    }
                //}
            //}.padding()
            
        }.navigationBarTitle("Menu")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
