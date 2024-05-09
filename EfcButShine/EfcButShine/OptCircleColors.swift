//
//  SwiftUIView.swift
//  EfcButShine
//
//  Created by efulgencio on 9/5/24.
//

import SwiftUI

struct OptCircleColors: View {
    
    typealias ActionHandler = () -> Void
    
    let nameImage: String
    let selected: Bool
    let handler: ActionHandler
    
    init(nameImage: String = "phone", selected: Bool = false, handler: @escaping OptCircleColors.ActionHandler) {
        self.nameImage = nameImage
        self.selected = selected
        self.handler = handler
    }
    
    var body: some View {
        Image(systemName: nameImage)
            .resizable()
            .scaledToFit()
            .frame(width: selected ? 50 : 40 , height: selected ? 50 : 40)
            .foregroundColor( selected ? .white : .cyan)
            .onTapGesture {
                handler()
            }
    }
}

#Preview {
    OptCircleColors() {
        print("pulsado")
    }
}
