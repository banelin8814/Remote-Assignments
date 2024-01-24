
/*:
 
 What is a closure ? How to execute a closure?\
 可以被傳遞的函式都是closure，不能傳遞的函式就是function，普遍的closure特徵，都會有{}，可以被當作參數傳遞，也可以被當作回傳值。另外，closure不能有預設值，func可以
，closure沒有引數名稱，呼叫時，直接放入資料。\
closure的寫法：
 ```
 let myClosure = {(a:Int,b:Int) -> Int in
 a + b
}
 let result = myClosure(4,2)
 ```
 回傳值包含closure，就是高階函式，常見的有map,sorted,filter,reduce，大概可以理解是針對collection裡面的資料做排序、改動的方法，會用
 a和b或者是$0和$1作為引數，$0和$1是swift預設的引數名稱，可以省略，但是closure裡面的引數名稱不能省略，因為closure沒有引數名稱，所以不能省略。
 
 ```
 let fruits: [水果] = [
     ("蘋果", 40),
     ("香蕉", 10),
     ("奇異果", 15),
     ("水梨", 69),
     ("葡萄", 99),
 ]
 let 排序水果 = fruits.sorted { a, b in a.price < b.price }
```

 */
 

 */

/*:
2. Please declare a closure whose input type is Int, output type is Bool. The functionality of
this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */



/*:
 Please complete the following function that prints a triangle made of asterisks.
For example, here’s what the output of   should be:
*/
