/*:

 
 
 
1. Here is an array:
 \
`let lottoNumbers = [10, 9, 8, 7, 6, 5]`\
 Please use For-In loop and Range to print the last three members in the
 .lottoNumbers. array.
 `for index in 4...6 {
     print(lottoNumbers[index])
 }`
 
 \
 2. Please use a for-in loop to print the results as the images listed below respectively
 (through .lottoNumbers.):\
 
 `for number in lottoNumbers.reversed() {
 print(number)
}`\
 `for index in 0...2 {
     print(lottoNumbers[index])
 }`
 
 \
 3. Please use a while loop to solve the Q2.
 
 `var index = lottoNumbers.count - 1`\
 `while index >= 0 {`\
    ` print(lottoNumbers[index])`\
     `index -= 1`\
 `}`
 
 `let reversedlottoNumbers = Array(lottoNumbers.reversed())`\
 `var index = lottoNumbers.count - 1`\
 `while index >= 3 {`\
     `print(reversedlottoNumbers[index])`\
     `index -= 1`\
` }`

 
 \
 4. Please use a repeat-while loop to solve Q2.\
 `var index = lottoNumbers.count - 1`\
 `repeat {`\
    ` print(lottoNumbers[index])`\
     `index -= 1`\
 `}while index >= 0`
 
 \
 `let reversedlottoNumbers = Array(lottoNumbers.reversed())`\
 `var index = lottoNumbers.count - 1`\
 `repeat {`\
   `  print(reversedlottoNumbers[index])`\
   `  index -= 1`\
` }while index >= 3`


 
 \
 5. What are the differences between while and repeat-while?
 
 while是先檢查條件才動作，\
 repeat-while是先動作才檢查條件，通常至少會先有一次動作。
 
 
 
 \
 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”

 \
 `var isRaining = true`\
 `var message =  isRaining ? "It’s raining, I don’t want to work today." : "Although it’s sunny, I still don’t want to work today."`\
 `print(message)`

 
 
 \
 7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
 Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.\
 
 `var jobLevel = 1`\
 `if 0 < jobLevel && jobLevel < 5 {`\
    ` switch jobLevel {`\
    ` case 1:`\
    `     print("Member")`\
     `case 2:`\
      `   print("Team Leader")`\
     `case 3:`\
      `   print("Mangager")`\
     `case 4:`\
      `   print("Director")`\
    ` default:`\
     `    print("")`\
    ` }`\
 `}else{`\
  `   print("We don't have this job")}`


 
 
 */
