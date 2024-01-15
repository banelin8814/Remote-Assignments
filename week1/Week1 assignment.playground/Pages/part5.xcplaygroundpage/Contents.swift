

/*:
1. What are the return types in the following statements?\
```
func birthday() -> String {} 回傳字串
func payment() -> Double {}  回傳浮點數
 ```
 */
/*:
 \
 2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.\
 ```
 func multiply(a: Int, b: Int = 10) {
    print(a * b)
 }
 ```
 \
 3. What’s the difference between argument label and parameter name in a function?
 
 argument label是外部參數名字，可以設定為_，在呼叫func的時候就沒有參數名稱
 parameter name是內部參數名字，通常在設定func的時候會使用
 
 \
 4.Please declare a function named greet with person as an argument label and name as a parameter name. This greet function will return a String. For example, if you call the function greet like this:
 greet (person: "Luke")
 \
 ```
 func greet(person name: String) {
    print("Hello, \(name)")
 }
```
 */
