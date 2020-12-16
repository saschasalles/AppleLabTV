//
//  CardView.swift
//  Apple Lab Tv
//
//  Created by Sascha Sallès on 02/12/2020.
//


import SwiftUI


struct CardView: View {
    public var cardType: CardSize
    private var height: CGFloat
    private var width: CGFloat
    private var textSize: Font
    var bgImage: String
    var promoText: String?
    
    init(cardType: CardSize, bgImage: String, promoText: String?) {
        self.promoText = promoText
        self.cardType = cardType
        self.bgImage = bgImage
        switch cardType {
        case .small:
            height = 120
            width = 215
            textSize = .title
        case .medium :
            height = 140
            width = 225
            textSize = .largeTitle
        case .large :
            height = 170
            width = 290
            textSize = .largeTitle
        }
    }
    
    var body: some View {
        if let text = promoText {
            Image(bgImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: height)
                .clipped()
                .overlay(
                    ZStack(alignment: .bottomLeading) {
                        Color(#colorLiteral(red: 0.1130829379, green: 0.1127061471, blue: 0.1133823618, alpha: 0.4298768858))
                        Text(text)
                            .font(self.textSize)
                            .bold()
                            .foregroundColor(.white)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding()
                    }
                )
                .cornerRadius(8.0, antialiased: true)
                .shadow(color: Color("CustomDarkGray"),radius: 5, x: 0, y: 10)
        } else {
            Image(bgImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: width, height: height)
                .cornerRadius(8.0, antialiased: true)
                .shadow(color: Color("CustomDarkGray"),radius: 5, x: 0, y: 6)
        }
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardType: .small, bgImage: "mentalist", promoText: "A découvrir")
    }
}
