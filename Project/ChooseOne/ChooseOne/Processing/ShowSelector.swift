//
//  ChoosingProcess.swift
//  ChooseOne
//
//  Created by Roge on 20/02/2020.
//  Copyright © 2020 Roge. All rights reserved.
//

//FUNTION Compare 1 list
//Input: Array, Current position (i,j)
//Output: Array1[postion1], Array2[position2]

import Foundation

//FUNCTION: Compare 1 list
func compareOneList(list: Array<ShowOption>) -> (ShowOption, ShowOption, Execution){
    //Go through all posible combinations of that list (depending on how many array items there are)
    for x in 0...(list.count - 1) {
        for y in 0...(list.count - 1) {
            //filter the shows using the "skipPair()" funcion
            if(skipPair(x, y) == Filter.Skip){
                //Continue to the next "y" if this x-y combination has already been used
                continue
            }
            
            //If it passes the filter: add this x-y combination to the global variable
            let pair = x * y + x + y
            addMadePairs(pair)
            
            //And return the x-y combination as shows
            return (list[x], list[y], Execution.Continue)
            //Since the combinations aren't used up, continue exection
        }
    }
    return (readShowArray(0), readShowArray(0), Execution.Finish)
}


func skipPair(_ i: Int, _ j: Int) -> Filter{
    //First compute the x-y combination
    let pair = (i * j) + (i + j)

    //Skip if x and y are the same (no reason in comparin equal shows)
    if i == j {
        return Filter.Skip
    }
    
    //Cycle throught the x-y combinations
    for x in 0...(globalVariables.MadePairs.count - 1){
        //If any of the combinations is the same as the input
        if readMadePairs(x) == pair {
            //Send signal to skip
            return Filter.Skip
        }
    }
    //If none of the above, send signal to use the pairs
    return Filter.DontSkip
}
