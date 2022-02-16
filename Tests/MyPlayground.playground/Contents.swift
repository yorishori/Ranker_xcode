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
enum Filter{
    case Skip
    case DontSkip
}
enum Execution{
    case Finish
    case Continue
}

let shows = ["A","B","C","D"]
var madePairs = [0]

var var1 = GlobalVariables.init()

print(var1)

var option1 = ShowOption.init()

var1.ShowArray += [option1]

print(var1)

var1 = GlobalVariables.init()

print(var1)

//var firstUse = true
//
//func compareOneList(showArray: Array<String>) -> (String, String, Execution){
//    for x in 0...(showArray.count - 1) {
//        for y in 0...(showArray.count - 1) {
//            if(skipPair(x, y) == Filter.Skip){
//                continue
//            }
//            let pair = x * y + x + y
//            madePairs += [pair]
//            //firstUse = false
//            return (showArray[x], showArray[y], Execution.Continue)
//        }
//    }
//    return ("", "", Execution.Finish)
//}
//
//
//func skipPair(_ i: Int, _ j: Int) -> Filter{
//    let pair = (i * j) + (i + j)
//
////    if i == j {
////        return Filter.Skip
////    }
//
//    for x in 0...(madePairs.count - 1){
//        if madePairs[x] == pair {
//            return Filter.Skip
//        }
//    }
//    return Filter.DontSkip
//}
//
//var loop = Execution.Continue
//
//while loop == Execution.Continue {
//    let var1 = compareOneList(showArray: shows)
//    loop = var1.2
//    print(var1.0 + var1.1)
//    print(madePairs)
//}
