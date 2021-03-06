//
//  FormRowStaticView.swift
//  TODOSWIFTUI
//
//  Created by alfahri yudha muqorrobin on 22/02/21.
//

import SwiftUI

struct FormRowStaticView: View {
    var icon: String
    var firsText: String
    var secondText: String
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
            }
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(firsText).foregroundColor(Color.gray)
            Spacer()
            Text(secondText)
        }
    }
}

struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firsText: "Application", secondText: "Todo")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
