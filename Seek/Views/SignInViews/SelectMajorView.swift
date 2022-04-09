//
//  SelectMajorView.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI

struct SelectMajorView: View {
    @EnvironmentObject var newUser : UserClass
    @State private var searchText = ""
    @State var majorsClicked : [String] = []
    var listOfMajors = ["Art", "Accounting","Biology", "Business", "Computer Science", "Nursing", "Engineering", "Liberal Arts"]
    
    var body: some View {
        VStack {
            VStack {
                List(filteredMajors, id: \.self) { school in
                    HStack() {
                        Button {
                            if (majorsClicked.contains(school)) {
                                let idx = majorsClicked.index(of: school)
                                majorsClicked.remove(at: idx!)
                                newUser.majorsClicked = majorsClicked
                            } else {
                                majorsClicked.append(school)
                                newUser.majorsClicked = majorsClicked
                            }
                            
                        } label: {
                            Text(school)
                                .background(majorsClicked.contains(school) ? .red : .white)
                                .listItemTint(.green)
                        }
                    }
                    .background(majorsClicked.contains(school) ? .red : .white)
                    
                }
                .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Enter your Interests")
            }
            .navigationTitle("Select your Interests!")
            
            if (majorsClicked.count != 0) {
                NavigationLink(destination: SelectPhotosView()) {
                    Text("NExt")
                }
            }
            
        }
    }
    
    var filteredMajors: [String] {
        if searchText.isEmpty {
            return listOfMajors
        } else {
            return listOfMajors.filter{$0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct SelectMajorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectMajorView()
    }
}
