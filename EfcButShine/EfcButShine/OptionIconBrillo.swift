//
//  OptionBrillo.swift
//  EfcButShine
//
//  Created by efulgencio on 9/5/24.
//

import SwiftUI

struct OptionIconBrillo: View {
    
    typealias ActionHandler = () -> Void
    let nameIcon: String
    let showIcon: Bool
    let handler: ActionHandler
    
    init(nameIcon: String = "trash.circle", showIcon: Bool = true, handler: @escaping OptionIconBrillo.ActionHandler) {
        self.nameIcon = nameIcon
        self.showIcon = showIcon
        self.handler = handler
    }
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [
                    Color.blue.opacity(0.2),
                    Color.blue.opacity(0.4),
                    Color.blue.opacity(0.6),
                    Color.blue.opacity(0.8)
                ]),
                    startPoint: .topLeading,
                    endPoint: .bottom
                ).edgesIgnoringSafeArea(.all)
                VStack {
                   Text("Opción")
                        .font(Font.system(size: 24))
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .bold()
                    if showIcon {
                        Image(systemName: nameIcon)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }

                }
                .padding()
                .onTapGesture {
                    handler()
                }
            }
        }
        .cornerRadius(30)
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .shadow(color: Color.blue, radius: 5, x: 5, y: 10)
    }
}

#Preview {
    OptionIconBrillo() { print("selecciondado") }
}
