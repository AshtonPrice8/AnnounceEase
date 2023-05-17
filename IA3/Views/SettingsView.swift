//
//  SettingsView.swift
//  IA3
//
//  Created by Ashton Price on 12/5/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                Text("Settings")
                Text("Sign Out")
                    .foregroundColor(.red)
            }
            .navigationTitle("Settings")
        }
        
        
        
        
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
