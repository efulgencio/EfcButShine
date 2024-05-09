//
//  ContentView.swift
//  EfcButShine
//
//  Created by efulgencio on 9/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80 , height: 80)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color.blue)
            .clipShape(RoundedCorner(radius: 80, corners: [.bottomLeft]))
            Spacer()
            VStack(spacing: 60) {
                HStack {
                    OptionIconBrillo(nameIcon: "safari") {
                        print("selecciondado")
                    }
                    OptionIconBrillo(nameIcon: "phone") {
                        print("selecciondado")
                    }
                }
                HStack {
                    OptionIconBrillo(nameIcon: "envelope") { 
                        print("selecciondado")
                    }
                    OptionIconBrillo(nameIcon: "trash") {
                        print("selecciondado")
                    }
                }
            }.padding(10)
            Spacer()
            HStack {
                ZStack(alignment: .center) {
                         RoundedRectangle(cornerRadius: 30)
                             .fill(Color.blue)
                             .frame(maxWidth: .infinity)
                             .frame(height: 100)
                    
                        HStack(spacing:50) {
                            OptCircleColors(nameImage: "safari") {
                                print("pulsado")
                            }
                            OptCircleColors(nameImage: "phone", selected: false) {
                                print("pulsado")
                            }
                            OptCircleColors(nameImage: "envelope", selected: true) {
                                print("pulsado")
                            }
                            OptCircleColors(nameImage: "trash",selected: false) {
                                print("pulsado")
                            }
                        }
                }
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}


struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        return Path(path.cgPath)
    }
}
