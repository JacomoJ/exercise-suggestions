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
; List<String> -> List<SomeStruct>
; Purpose: Take a list of strings and, recursively, built a List<SomeStruct> from the strings in the argument and a constant P.
```

6) This is an abstraction. The types of the function f and the argument it takes are not further specified. We assume that `f` takes a Number and returns a Boolean. Then `xs` has to be a `List<Number>`.
The output type could also be left unspecified.
```
; [Number -> Boolean] List<Number> -> List<Boolean>
; Purpose: Recursively apply a given function to a List<Number> and return the results as a List<Boolean>
```

