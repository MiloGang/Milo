//
//  SourceManager.swift
//  Milo
//
//  Created by Mattso on 09/06/2021.
//

import Foundation
import SwiftUI

class SourceManager {
    var sourceName: String = ""
    var sourceURL: String = ""
    var sourceIcon: Image = Image(uiImage: UIImage(named: "tweak") ?? UIImage())
    var isSecure: Bool = false
    var startedRefreshing: Bool = false
    var loadingProgress = CGFloat(0)
    
    func addSource() {
        
    }
}
