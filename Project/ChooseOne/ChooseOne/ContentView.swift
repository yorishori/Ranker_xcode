//
//  ContentView.swift
//  ChooseOne
//
//  Created by Roge on 20/02/2020.
//  Copyright © 2020 Roge. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let tittles = compareOneList(list: globalVariables.ShowArray)
        ChoosingView(option1Tittle: tittles.0, option2Tittle: tittles.1)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
