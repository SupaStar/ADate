//
//  ThemeTextFieldStyle.swift
//  ADate
//
//  Created by Usuario Alquimia on 05/07/23.
//

import Foundation
import FloatingLabelTextFieldSwiftUI

struct ThemeTextFieldStyle: FloatingLabelTextFieldStyle {
    func body(content: FloatingLabelTextField) -> FloatingLabelTextField {
        content
            .placeholderColor(.gray) // Sets the placeholder color.
    }
}
