//
//  InfoView.swift
//  SlotMachine
//
//  Created by Rami Ounifi on 6/8/2021.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(
                        firstItem: "Application",
                        secondItem: "Slot Machine"
                    )
                    
                    FormRowView(
                        firstItem: "Platforms",
                        secondItem: "iPhone, iPad, Mac"
                    )
                    
                    FormRowView(
                        firstItem: "Developer",
                        secondItem: "Rami Ounifi"
                    )
                    FormRowView(
                        firstItem: "Version",
                        secondItem: "1.0.0"
                    )
                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action:{
                self.presentationMode.wrappedValue.dismiss()
            }) {
               Image(systemName: "xmark.circle")
                .font(.title)
            }
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(.secondary)
            ,alignment: .topTrailing
        )
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    var body: some View {
        HStack {
            Text(firstItem)
                .foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}
