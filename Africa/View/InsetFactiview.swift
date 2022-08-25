//
//  InsetFactiview.swift
//  Africa
//
//  Created by alieu samb on 11/02/2022.
//

import SwiftUI

struct InsetFactiview: View {
    let animal : Animal
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id:\.self ) { item in
                    Text(item)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight:  168, maxHeight: 180)
        }//:Box
    }
}

struct InsetFactiview_Previews: PreviewProvider {
    static var animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactiview(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
