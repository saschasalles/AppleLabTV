//
//  CardVisionView.swift
//  Apple Lab Tv
//
//  Created by Sascha Sallès on 02/12/2020.
//

import SwiftUI

struct CardVisionView: View {
    var image: String
    @Binding var value: Float
    
    
    var body: some View {
        Image(self.image)
            .resizable()
            .scaledToFill()
            .frame(width: 290, height: 170)
            .clipped()
            .cornerRadius(8.0)
            .shadow(radius: 0.3)
            .overlay(
                VStack(alignment: .leading){
                    Spacer()
                    Text("1h28min")
                        .foregroundColor(Color(#colorLiteral(red: 0.899153471, green: 0.8960976005, blue: 0.9015423059, alpha: 1)))
                        .font(.system(size: 14))
                        .shadow(color: .black, radius: 1.6)
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            Rectangle()
                                .frame(width: geometry.size.width ,
                                       height: geometry.size.height)
                                .foregroundColor(.clear)
                                .background(Color.white)
                                .opacity(0.3)
                            Rectangle()
                                .frame(
                                    width:min(CGFloat(self.value)*geometry.size.width, geometry.size.width),
                                    height: geometry.size.height)
                                .foregroundColor(.clear)
                                .background(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9001742005, blue: 0.6572231054, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))]),
                                        startPoint: .leading,
                                        endPoint: .trailing))
                                .animation(.linear)
                        }.cornerRadius(5.0)
                    }
                    .frame(height: 2.5)
                }.padding([.horizontal, .bottom], 10)
            )
    }
}
struct CardVisionView_Previews: PreviewProvider {
    static var previews: some View {
        CardVisionView(image: "hp", value: .constant(0.9))
    }
}
