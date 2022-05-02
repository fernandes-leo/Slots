//
//  Perdeu.swift
//  Slots
//
//  Created by Leonardo Fernandes on 27/01/22.
//

import SwiftUI

struct PerdeuView: View {
    @State private var presentAlert = false


    var body: some View {
        VStack {
            Button("Alert") {
                // 2
                presentAlert = true

            }
        }
        .alert("Title", isPresented: $presentAlert, actions: { // 3


        })
    }
}

struct Perdeu_Previews: PreviewProvider {
    static var previews: some View {
        PerdeuView()
    }
}
