//
//  ContentView.swift
//  Multi-View
//
//  Created by Naufal Adli on 16/02/24.
//

import SwiftUI

struct ContentView: View {
   @StateObject var model = SettingsModel()
  var body: some View {
    NavigationStack {
        Form{
            Section(){
                ForEach(model.personalItems){ item in
                    SettingsRowView(item: item)
                }
            }
            
            Section(){
                ForEach(model.generalItems){ item in
                    SettingsRowView(item: item)
                }
            }
            
            Section(){
                ForEach(model.settingItems){ item in
                    SettingsRowView(item: item)
                }
            }
        }.navigationTitle("Settings")
    }
  }
}

struct SettingsRowView: View {
    var item: SettingItem
    var body: some View {
        NavigationLink(destination: item.destinationView, label: {
            Image(systemName: item.iconName)
                .foregroundColor(item.iconColor)
            Text(item.title)
        })
    }
}

struct UserProfileView: View {
    @StateObject var model = SettingsModel()
    var body: some View {
        NavigationStack {
            Form{
                Section(){
                    ForEach(model.personalItems2){ item in
                        SettingsRowView(item: item)
                    }
                }
            }.navigationTitle("Profile View")
        }
    }
}

