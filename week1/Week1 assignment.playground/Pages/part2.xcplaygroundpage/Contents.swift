
/*:
 *
1. Please explain the difference between let and varm.\
 let 是常數，通常用在其值不會改變的狀態。\
 var 是變數，通常用在其值會改變的狀態，且會用在計算屬性上。\
\
 
2. In Swift, we usually define a variable through the syntax as below:\
`var x: Int = 10`\
 We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.\
`let pi: Double = 3.14159`\
 \
3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average .\
`let x:Int = 10`\
`let y:Int = 2`\
 `let average = (x + y) / 2`\
 \
 4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.\
 ● Please solve this problem so that we can put the average in the record system.\
 ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
 
 `let average = float((x + y) / 2)`


 10 / 3 兩者是整數，無論是否整除，結果都會捨去小數點後的值\
 10.0 / 3.0 兩者是浮點數，結果如果是double是15位精度的3.333333333333333，float是7位精度的3.3333333\
 
 
5. Declare two constants that values are 10 and 3 each, then please calculate the
 remainder and save the result in a constant named remainder .
 
`let x = 10`\
` let y = 3`\
`let remainder = x % y`\
 
 
 
 
 6 .Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
 
 `var flag:Bool = true`\
 `var inputString:String = "Hello world."`\
 `let bitsInBite:Int = 8`\
 `let averageScor:Double = 86.8`
 
 \
7. What is Type Inference in Swift?\
不用定義值的類型，swift會自動推斷出來。
 
 
 \
 8.What is the issue about this piece of code?\
原本給的變數值型態是整數，就不能賦予字串
 
 \
 9.Compound assignment operators are very useful when programming. Please declare a variable salary with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.\
`var salary = 22000`\
 `salary += 28000`\
 `print(salary)`
 
 \
 10.You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
 Now please write down the Equality operator in Swift.
 
`==`
 
 
 
 
 
 */




