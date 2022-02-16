//
//  File.swift
//  ChooseOne
//
//  Created by Roge on 20/02/2020.
//  Copyright © 2020 Roge. All rights reserved.
//

import Foundation

struct ShowOption {
    var showName:   String
    var totalWins:  Int
    var position:   Int
    
    init() {
        self.showName   = ""
        self.totalWins  = 0
        self.position   = 0
    }
}

struct GlobalVariables {
    var ShowArray: Array<ShowOption>
    var MadePairs: Array<Int>

    init(){
        self.ShowArray = [ShowOption.init()]
        self.MadePairs = [0]
    }
}
