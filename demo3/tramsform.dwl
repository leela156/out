%dw 2.0
output application/json
var a = ["aa","bb","cc"]
var b = ["abc","xyz","qwe"]
---
a  map {
    ($): b[$$]
} reduce ((i, a) -> i ++ a) orderBy ((value, key) -> key) 





//As per the requested output we used map fuction to map and the reduce function to the reduction then replaces the accumulator with the new result and oderBy to Reorder the elements of an input