//
//  ShowTemplate.swift
//  ChooseOne
//
//  Created by Roge on 20/02/2020.
//  Copyright © 2020 Roge. All rights reserved.
//

import SwiftUI

struct ChoosingView: View {
    var option1Tittle: String
    var option2Tittle: String
    
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Text(option1Tittle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    
                }) {
                    Text("Option A")
                }
            }
            .animation(.easeOut)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Divider()
            
            VStack(alignment: .center) {
                Text(option2Tittle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    
                }) {
                    Text("Option B")
                }
            }
            .animation(.easeOut)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        
        
    }
}

struct ShowTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ChoosingView(option1Tittle: "Tittle Option 1", option2Tittle: "Tittle Option 2")
    }
}
