# Solution

## Variables and Parameters

1) `v_r` is a constant and thus should be in caps `V-R` or `VR` without underscores.

2) `var` is constant: `VAR`

3) `X` is not a constant, but a function argument: `x`
  `var` within the function, however, should be in caps (this is actually a bug, unless `var` is defined elsewhere).

4) `Var` is a constant: `VAR`
  `X` is not a constant, but a function argument: `x`

5) `VAR` is not a constant (NB the `set!`): `var`
  `X` is not a constant, but a function argument: `x`
  

## Structs

None of the structs have the required description.

1) This is alright.

2) Structs are supposed to be in small letters: `blubb`

3) Structs are supposed to be in small letters: `blubb`

4) Structs are supposed to be in small letters: `blubb`

## Functions

All signatures have the wrong case. They have to contain types (in camel-case).

1) There is no signature and no purpose statement.

2) There is no purpose statement.

3) There have to be spaces around `->`. Otherwise it is a function name. 
  There is no purpose statement.

4) The signature has to be with only one hyphen. The signature is missing an argument. It should be: `Number Number -> Number`
  There is no purpose statement.

5) The signature is missing an argument. There is no purpose statement.
  
6) The signature has the wrong type. The second argument is also a Number (because of the function `*: Number Number -> Number`).
  There is no purpose statement.

