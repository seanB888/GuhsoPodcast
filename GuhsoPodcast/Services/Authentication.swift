//
//  Authentification.swift
//  GuhsoPodcast
//
//  Created by SEAN BLAKE on 8/8/22.
//

import SwiftUI

class Authentication: ObservableObject {
    @Published var isValidated = false
    
    func updateValidation(success: Bool) {
        withAnimation {
            isValidated = success
        }
    }
}
