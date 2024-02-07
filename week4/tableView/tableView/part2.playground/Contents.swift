/*:
簡單來說，區段(section)裡面劃分幾格(row)，格子裡面放內容物(cell)，row是重複使用的，所以需要indexPath來定位這些內容物放在哪個格子。
 
 1.tableView(_:numberOfSections:)\
 定義section的數量，代表整個表格最外層大的結構，操作時，需要返回一個整數，代表區段的數量。
 
 2.tableView(_:numberOfRowsInSection:)\
 計算每個section的row數量
 返回一個整數，代表該區段包含多少單元格。
    
 3.tableView(_:cellForRowAt:)\
用於顯示該單元格的內容，也就是說單元格只代表一個相對位置的外框，要將內容物(cell)放進去，才有東西顯示。
 這裡會使用 dequeueReusableCell(withIdentifier:) 來實現單元格的重複使用
 以及indexPath來定位cell放在哪個row裡面。
 
 
 另外也有其他常用的方法\
 4.tableView(:viewForHeaderInSection:) 和 tableView(:viewForFooterInSection:)\
 表格需要顯示區段頭和區段尾，則會呼叫這兩個方法。
 方法中返回一個 UIView 物件，用於定義區段頭和區段尾的外觀。
 
 5.tableView(:canEditRowAt:) 和 tableView(:commitEditingStyle:forRowAt:)\
 canEditRowAt:方法中返回 true 或 false，來控制是否允許編輯指定的行。\
commitEditingStyle:forRowAt:) 方法中處理編輯操作，像是刪除行或移動行。
 

 
 
 
 
 
 
 
 
 
 */
