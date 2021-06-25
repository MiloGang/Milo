//
//  HomeView.swift
//  Milo
//
//  Created by Mattso on 06/06/2021.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(uiImage: UIImage(named: "LargeAppIcon") ?? UIImage())
                    .cornerRadius(15)
                Text("Welcome to Milo").font(.system(size: 60))
                Text("This is a temporary Home Screen while we set up repos.")
                Image(uiImage: UIImage(named: "fr") ?? UIImage())
            }
            .navigationTitle(Text("Home"))
        }
    }
}
