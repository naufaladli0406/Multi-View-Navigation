//
//  DataModel.swift
//  Multi-View
//
//  Created by Naufal Adli on 16/02/24.
//

import SwiftUI

struct SettingItem: Identifiable {
    var id = UUID()
    var title : String
    var iconName : String
    var iconColor : Color
    var destinationView : AnyView
}

class SettingsModel: ObservableObject{
    
    let personalItems: [SettingItem] = [
        SettingItem(title: "Profile", iconName: "person.crop.circle.fill", iconColor: .blue, destinationView: AnyView(UserProfileView())),
        SettingItem(title: "Avatar", iconName: "person.fill.viewfinder", iconColor: .blue, destinationView: AnyView(UserProfileView()))
    ]
    
    let generalItems: [SettingItem] = [
        SettingItem(title: "Broadcast Lists", iconName: "text.bubble.fill", iconColor: .green, destinationView: AnyView(Text("Broadcast Lists"))),
        SettingItem(title: "Starred Message", iconName: "star.fill", iconColor: .yellow, destinationView: AnyView(Text("Starred Message"))),
        SettingItem(title: "Linked Device", iconName: "link", iconColor: .blue, destinationView: AnyView(Text("Linked Device")))
        
    ]
    
    let settingItems: [SettingItem] = [
        SettingItem(title: "Account", iconName: "key.fill", iconColor: .blue, destinationView: AnyView(Text("Account"))),
        SettingItem(title: "Privacy", iconName: "hand.raised.fill", iconColor: .blue, destinationView: AnyView(Text("Privacy"))),
        SettingItem(title: "Chats", iconName: "message.fill", iconColor: .green, destinationView: AnyView(Text("Chats"))),
        SettingItem(title: "Notifications", iconName: "bell.fill", iconColor: .red, destinationView: AnyView(Text("Notifications"))),
        SettingItem(title: "Storage And Data", iconName: "externaldrive.fill", iconColor: .green, destinationView: AnyView(Text("Storage And Data")))
    ]
    
    let personalItems2: [SettingItem] = [
        SettingItem(title: "Profile", iconName: "person.crop.circle.fill", iconColor: .blue, destinationView: AnyView(Text("Profile"))),
        SettingItem(title: "Avatar", iconName: "person.fill.viewfinder", iconColor: .blue, destinationView: AnyView(Text("Avatar")))
    ]
}



