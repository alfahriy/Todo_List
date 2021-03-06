//
//  EmptyListView.swift
//  TODOSWIFTUI
//
//  Created by alfahri yudha muqorrobin on 18/02/21.
//

import SwiftUI

struct EmptyListView: View {
    @State private var isAnimated : Bool = false
    
    let images : [String] = [
        "illustration-no1",
        "illustration-no2",
        "illustration-no3"
    ]
    
    let tips : [String] = [
        "Gunakan Waktumu Dengan Bijak",
        "Keep Down To Earth",
        "Utamakan pekerjaan berat terlebih dahulu",
        "Apresiasi dirimu setealah berusaha",
        "Persiapkan hari esok lebih baik",
        "Asal perlahan yang penting selesai"
    ]
    
    var body: some View {
        ZStack {
            VStack(alignment: .center , spacing: 20) {
                Image("\(images.randomElement() ?? self.images[0])")
                    .resizable()
                    .frame(minWidth: 256, idealWidth: 280, maxWidth: 360, minHeight: 256, idealHeight: 280, maxHeight: 360, alignment: .center)
                Text("\(tips.randomElement() ?? self.tips[0])").font(.system(.headline, design: .rounded))
            }
            .padding(.horizontal)
            .opacity(isAnimated ? 1 : 0)
            .offset(y : isAnimated ? 1 : -50)
            .animation(.easeOut(duration: 1.5))
            .onAppear(perform: {
                self.isAnimated.toggle()
            })
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color("Color Base"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView().environment(\.colorScheme, .dark)
    }
}
