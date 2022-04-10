//
//  Continued.swift
//  Seek
//
//  Created by Gerdin Ventura on 4/9/22.
//

import SwiftUI
import CryptoKit

struct ExtraSignupInfo: View {
    @EnvironmentObject var newUser : UserClass
    @State private var searchText = ""
    @State var schoolClicked = ""
    var listOfSchools = ["UMD", "Towson", "Johns Hopkins", "CIT", "MIT", "CMU", "SU", "UCB", "UIUC", "CU", "GT", "UW", "PU",
                         "UTA", "UCLA", "UCSA", "HU", "UMCP", "UPENN", "UWM", "JHU"]
    
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
                                newUser.school = school
                            }
                        } label: {
                            CustomSelectedCell(cellText: school, school: school, schoolClicked: schoolClicked)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .leading)
                    .listRowBackground( self.schoolClicked == school ? Color.red : .clear)
                }
                .searchable(text: $searchText,placement: .navigationBarDrawer(displayMode: .always), prompt: "Enter your University")
            }
            .navigationTitle("Select your University!")
            .listStyle(PlainListStyle())
            .onAppear {
                UITableView.appearance().separatorColor = .clear
            }
            
            if (schoolClicked != "") {
                NavigationLink(destination: SelectHobbiesView()) {
                    CustomNextButton()
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
