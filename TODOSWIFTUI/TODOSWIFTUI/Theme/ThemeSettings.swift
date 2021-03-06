//
//  ThemeSettings.swift
//  TODOSWIFTUI
//
//  Created by alfahri yudha muqorrobin on 25/02/21.
//

import SwiftUI

public class ThemeSettings: ObservableObject {
    @Published public var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet {
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
    
    private init () {}
    public static let shared = ThemeSettings()
}
