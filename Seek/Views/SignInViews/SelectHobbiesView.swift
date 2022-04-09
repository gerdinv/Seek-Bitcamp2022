//
//  SelectHobbiesView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct SelectHobbiesView: View {
    @State private var searchText = ""
    @State var hobbyClicked : [String] = []
    var listOfHobbies = ["Travel", "Outdoors", "Anime", "Gaming", "Sports", "Movies", "Art", "Accounting", "Computer Science", "Coding", "Foodie", "Biology", "Nursing", "Engineering", "Liberal Arts", "Business"]
    
    var body: some View {
        VStack {
            VStack {
                List(filteredHobbies, id: \.self) { school in
                    HStack() {
                        Button {
                            if (hobbyClicked.contains(school)) {
                                let idx = hobbyClicked.index(of: school)
                                hobbyClicked.remove(at: idx!)
                            } else {
                                hobbyClicked.append(school)
                            }
                            
                        } label: {
                            Text(school)
                                .background(hobbyClicked.contains(school) ? .red : .white)
                                .listItemTint(.green)
                        }
                    }
                    .background(hobbyClicked.contains(school) ? .red : .white)
                    
                }
                .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Enter your Interests")
            }
            .navigationTitle("Select your Interests!")
            
            if (hobbyClicked.count != 0) {
                NavigationLink(destination: SelectMajorView()) {
                    Text("Next")
                }
            }
            
        }
    }
    
    var filteredHobbies: [String] {
        if searchText.isEmpty {
            return listOfHobbies
        } else {
            return listOfHobbies.filter{$0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct SelectHobbiesView_Previews: PreviewProvider {
    static var previews: some View {
        SelectHobbiesView()
    }
}

