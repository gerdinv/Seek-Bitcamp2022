//
//  SelectHobbiesView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct SelectHobbiesView: View {
    @EnvironmentObject var newUser : UserClass
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
                                newUser.hobbies = hobbyClicked
                            } else {
                                hobbyClicked.append(school)
                                newUser.hobbies = hobbyClicked
                            }
                            
                        } label: {
                            Text(school)
                                .background(hobbyClicked.contains(school) ? .red : .clear)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .leading)
                    .listRowBackground( hobbyClicked.contains(school) ? Color.red : .clear)
                }
                .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Enter your Interests")
            }
            .listStyle(PlainListStyle())
            .onAppear {
                UITableView.appearance().separatorColor = .clear
            }
            .navigationTitle("Select your Interests!")
            
            if (hobbyClicked.count != 0) {
                NavigationLink(destination: SelectMajorView()) {
                    CustomNextButton()
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

