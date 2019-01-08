# Solutions

1)
```
; Number Number -> Number
; Purpose: Multiply two numbers
```

2)
```
; String -> String
; Purpose: Append "Banana" to a given string
```

3)
```
; String -> Option<String>
; Purpose: Append "Banana" to a given string if that string is not empty
; Otherwise return false
```

4) In this exercise the second argument has to be type of the some-struct-y. That type is, however, not further specified. For now we take it to be a Number. (But it could be anything else.)
```
; String Number -> Option<SomeStruct>
; Purpose: Take a String and a Number and return a SomeStruct if the string is not empty
```

5) 
```
; List<T> -> List<SomeStruct>
; Purpose: Take a list of type T and, recursively, built a List<SomeStruct> from the strings in the argument and a constant P.
; The Type T might be further restricted by the type of (some-struct-x ...).
```

6) This is an abstraction. 
```
; [A -> B] List<A> -> List<B>
; Purpose: Recursively apply a given function to a List<A> and return the results as a List<B>
```

