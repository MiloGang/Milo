//
//  SourceAddView.swift
//  Milo
//
//  Created by Mattso on 09/06/2021.
//

import Foundation
import SwiftUI

struct SourceAddView: View {
    @State private var sourceURL: String = "https://"
    @State public var showingInstallView = false
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Enter the URL for the source you want to add")) {
                    TextField("https://", text: $sourceURL)
                }
            }
            .navigationBarTitle(Text("Add a Source"))
        }
        
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .padding(.horizontal, 20)
                    .frame(height: 60)
                
                Text("Done")
                    .foregroundColor(Color(UIColor.white))
            }
            .onTapGesture {
                showingInstallView.toggle()
            }.sheet(isPresented: $showingInstallView) {
                InstallView(isShowing: $showingInstallView)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(Color(UIColor.systemRed))
                    .padding(.horizontal, 20)
                    .frame(height: 60)
                
                Text("Cancel")
                    .foregroundColor(Color(UIColor.white))
            }
            .onTapGesture {
                isPresented = false
            }
        }
    }
}
