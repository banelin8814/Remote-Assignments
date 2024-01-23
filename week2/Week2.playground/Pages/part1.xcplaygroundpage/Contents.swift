//:1
class Animal {
    var gender:Gender
    func eats(){
        print("I eat everything!")
    }
    init(gender: Gender) {
        self.gender = gender
    }
}

enum Gender {
    case male
    case female
    case undefined
}
//:2
class Elephant:Animal {
    override func eats(){
    print("I eat grass")
    }
}

class Tiger:Animal {
    override func eats(){
    print("I eat meats")
    }
}
class Horse:Animal {
    override func eats(){
    print("I eat grass")
    }
}






class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot

    }
}

let tiger = Tiger(gender: .female)
let elephant = Elephant(gender: .female)
let horse = Horse(gender: .female)

let zoo = Zoo(weeklyHot: tiger)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse





/*:
instance就是實例，
class 和 struct 兩者都可以建立屬性和方法，
他們就像藍圖一樣，而按照藍圖所做出的實體物件，就叫instance，Initilizer是建立instance的方式
 在class裡面要自己定義init的方式，struct有預設的init。
 */

/*:
Struct and Class的主要差別在於
 Struct無法被繼承。。struct因爲是value type的特性，數據都是複製的、分開的，不會造成不同地方對同一份數據進行修改，Struct通常用在當作model來使用。
 
 class是referance type，就像個連結，指向同個數據。另外他可以被繼承，子類別有父類別的所有特性。
 
 
 
 */



/*:
 如同上題，value type的特性，數據都是複製的、分開的，反之，referance type，就像個連結，指向同個數據。
 */



/*:
 instance method和 type method的差異在於，如同字面上instance代表有被實例化的物件，使用裡面的func;\
 type method也就是類型，如同剛剛的藍圖比喻，他沒有被建立個實體物，而是直接用藍圖裡面的func。
 
 
 */


/*:
 在類型裡面self是類型自己

 在實例化裡面self是實例化自己  Self是類型
 */
