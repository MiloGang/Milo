//
//  SourcesView.swift
//  Milo
//
//  Created by Mattso on 06/06/2021.
//

import Foundation
import SwiftUI

struct SourcesView: View {
    @State private var isShowingSourceAdd = false
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    Button("Add a source") {
                        print("add source")
                        isShowingSourceAdd.toggle()
                    }
                    .sheet(isPresented: $isShowingSourceAdd) {
                        SourceAddView(isPresented: $isShowingSourceAdd)
                    }
                }
                
                Section {
                    HStack {
                        Image(uiImage: UIImage(named: "procursus") ?? UIImage())
                        Text("Procursus")
                        Spacer()
                        Text(">").foregroundColor(Color(UIColor.systemGray2))
                    }
                }
                .onTapGesture {
                    print("procursus")
                }
                
                Section {
                    HStack {
                        Image(uiImage: UIImage(named: "elu") ?? UIImage())
                            .cornerRadius(15)
                        Text("Elucubratus")
                        Spacer()
                        Text(">").foregroundColor(Color(UIColor.systemGray2))
                    }
                }
                .onTapGesture {
                    print("Bingner")
                }
                
                Section {
                    HStack {
                        Image(uiImage: UIImage(named: "Mattso") ?? UIImage())
                            .cornerRadius(15)
                        Text("Mattso's Repo")
                        Spacer()
                        Text(">").foregroundColor(Color(UIColor.systemGray2))
                    }
                }
                .onTapGesture {
                    print("mattso :)")
                }
            }
            .navigationBarTitle(Text("Sources"))
        }
    }
}
