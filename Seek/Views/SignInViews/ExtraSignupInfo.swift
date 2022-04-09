//
//  Continued.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI
import CryptoKit

struct ExtraSignupInfo: View {
    @State private var searchText = ""
    @State var schoolClicked = ""
    var listOfSchools = ["UMD", "Towson", "Johns Hopkins", "UMD", "Towson", "Johns Hopkins", "UMD", "Towson", "Johns Hopkins", "UMD", "Towson", "Johns Hopkins"]
    
    var body: some View {
        VStack {
            VStack {
                List(filteredSchools, id: \.self) { school in
                    HStack() {
                        Button {
                            if (schoolClicked == school) {
                                schoolClicked = ""
                            } else {
                                schoolClicked = school
                            }
                            
                        } label: {
                            Text(school)
                                .background(school == schoolClicked ? .red : .white)
                                .listItemTint(.green)
                        }
                    }
                    .background(school == schoolClicked ? .red : .white)
  
                }
                .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Enter your University")
            }
            .navigationTitle("Select your University!")
            
            if (schoolClicked != "") {
                FilledButton(text: "Continue") {
                    print(schoolClicked)
                }
                
                NavigationLink(destination: SelectHobbiesView()) {
                    Text("NEXT")
                }
            }

        }
    }
    
    var filteredSchools: [String] {
        if searchText.isEmpty {
            return listOfSchools
        } else {
            return listOfSchools.filter{$0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct Continued_Previews: PreviewProvider {
    static var previews: some View {
        ExtraSignupInfo()
    }
}
