//
//  SwiftUIView.swift
//  Apple Lab Tv
//
//  Created by Sascha Sallès on 02/12/2020.
//



import SwiftUI

struct CustomButtonView: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: self.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 18)
                .foregroundColor(Color("InvertedCustomWhite"))
            Text(self.text.uppercased())
                .font(.system(size: 12))
                .fontWeight(.semibold)
                .foregroundColor(Color(#colorLiteral(red: 0.5074755549, green: 0.5030133128, blue: 0.5195581317, alpha: 1)))
        }
        .padding(.vertical, 13)
        .padding(.horizontal, 16)
        .background(Color(.systemGray5))
        .cornerRadius(8.0)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(image: "film.fill", text: "films")
    }
}
