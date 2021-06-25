//
//  TabBarView.swift
//  Milo
//
//  Created by Mattso on 06/06/2021.
//

import Foundation
import SwiftUI

struct TabBarView: View {
    @State var tabID: Int?
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            SourcesView()
                .tabItem {
                    Label("Sources", systemImage: "shippingbox.fill")
                }
            
            NewView()
                .tabItem {
                    Label("New", systemImage: "newspaper.fill")
                }
            
            InstalledView()
                .tabItem {
                    Label("Installed", systemImage: "tray.circle.fill")
            }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.circle.fill")
                }
        }
    }
}
