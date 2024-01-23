
//證照
protocol PoliceMan {
    func arrestCriminals()
}

protocol ToolMan {
    func fixComputer()
}



struct Person:PoliceMan {
    func arrestCriminals() {
        print("Freeeeeeze!!!!!")
    }
    
    let name:String
    let toolMan:ToolMan
}

struct Engineer:ToolMan{
    func fixComputer() {
        print("修電腦中....")
    }
}
let Steven = Person(name: "Steven", toolMan: Engineer())






