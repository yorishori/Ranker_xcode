//
//  Initializing.swift
//  ChooseOne
//
//  Created by Roge on 23/02/2020.
//  Copyright © 2020 Roge. All rights reserved.
//

//Use this to inser initiaization of functions
import Foundation

var globalVariables = GlobalVariables.init()


func addShowArray(_ value: ShowOption){
    globalVariables.ShowArray += [value]
}
func readShowArray(_ position: Int) -> ShowOption{
    return globalVariables.ShowArray[position]
}


func addMadePairs(_ value: Int){
    globalVariables.MadePairs += [value]
}
func readMadePairs(_ position: Int) -> Int{
    return globalVariables.MadePairs[position]
}

func resetVariables(){
    globalVariables = GlobalVariables.init()
}
