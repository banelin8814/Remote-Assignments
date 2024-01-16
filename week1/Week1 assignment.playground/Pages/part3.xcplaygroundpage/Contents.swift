
/*:
1. Please initialize an empty array with String data type and assign it to a variable named .myFriends .\
`var myFriends: [String] = []`
 
\
2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.\
`myFriends += ["Ian", "Bomi", "Kevin"]`
 
\
3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.\
`myFriends.append("Michael")`
  
 
\
4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.\
`myFriends.swapAt(0, 2)`
 
\
5. Use for...in to print all the friends in myFriends array.\
    `for friend in myFriends {
        print(friend)
    }`
 
 
\
6. Now I want to know who is at index 5 in the myFriends array, try to find the answer  for me. Please explain how you get the answer and why the answer is it.\
    \
 在myfriends的array中，沒有人在index5，
 "Kevin", "Ian", "Bomi", "Michael"分別的index是0,1,2,3

 
\
7. How to get the first element in an array?\
    `myFriends[0]`
 
 \
8. How to get the last element in an array?\
    `myFriends[myFriends.count - 1]`
 
 \
9. Please initialize a with keys of type String, value of type Int, and assign it to a variable named myCountryNumber .\
    `var myCountryNumber: [String: Int] = [:]`
 
 \
10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.\
 `myCountryNumber["US":  1, "GB": 44 , "JP": 81]`
 
 \
 11. Change the value of ‘GB’ from 44 to 0.\
 `myCountryNumber["GB"]= 0`

 \
 12. How to declare an empty dictionary?\
 `var emptyDictionary: [String: Int] = [:]`

 \
 13. How to remove a key-value pair in a dictionary?
 \

` myCountryNumber.removeValue(forKey: "US")`
 */
