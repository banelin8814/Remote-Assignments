
enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard  number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}


// GuessNumberGame的實例
let game = GuessNumberGame()

do {
    try game.guess(number: 20)
} catch GuessNumberGameError.wrongNumber {
    print("數字錯了!")
} catch {
    print("其他錯誤發生")
}
