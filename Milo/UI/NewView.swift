//
//  NewView.swift
//  Milo
//
//  Created by Mattso on 06/06/2021.
//

import Foundation
import SwiftUI

struct NewView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Image(uiImage: UIImage(named: "tweak") ?? UIImage())
                            .cornerRadius(15)
                        VStack {
                            Text("ShitOS")
                            Text("Mattso").foregroundColor(Color(UIColor.systemGray2))
                        }
                        Spacer()
                        Text(">").foregroundColor(Color(UIColor.systemGray3))
                    }
                }
            }
            .navigationBarTitle(Text("New"))
        }
    }
}
