//rawValue指定攜帶的值都要是String
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"

    var price: Int {
        switch self {
        case .oil92:
            return 10
        case .oil95:
            return 20
        case .oil98:
            return 30
        case .diesel:
            return 40
        }
    }

    func getPrice() -> Int {
        switch self {
        case .oil92:
            return 10
        case .oil95:
            return 20
        case .oil98:
            return 30
        case .diesel:
            return 40
        }
    }
}

let gasoline95 = Gasoline.oil95.getPrice()
let gasoline92 = Gasoline.oil92.price



//:associated value 是不同case攜帶不同的參數，參數的名稱和類別都不一樣


class Pet {
    var name: String? = nil
    init(name: String){
        self.name = name
    }
}
class People {
    var pet: Pet? = nil
}

let Bane = People()
//將狗的名字存進Bane的property(pet)
Bane.pet = Pet(name: "小黑")
// 建立一個確認寵物名字的 closure，引數要放進去寵物的類別
func checkPetHaveName(_ pet: Pet?) {
    guard let petName = pet?.name else {
        print("這個人沒有狗")
        return
    }
    print("寵物的名字是\(petName)")
}
//確認Bane的狗的名字是什麼
checkPetHaveName(Bane.pet)



let John = People()
John.pet = Pet(name: "小黃")

if let petName = John.pet?.name {
    print("John的狗叫\(petName)")
} else {
    print("這個人沒有狗")
}

 
