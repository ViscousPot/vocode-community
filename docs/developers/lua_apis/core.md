---
title: Core API
---

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

## Json API

### decode(string)
Decodes a JSON string into a Lua table. 

#### Parameters
- `string` (string): The JSON string to decode.

#### Example
```lua
decode('{"key": "value"}')
```

### encode(table)
Encodes a Lua table into a JSON string. 

#### Parameters
- `table` (table): The Lua table to encode.

#### Example
```lua
encode({ key = "value" })
```

## 🌏 Global

### toNumber(str) -> num
Converts a string to a number 

#### Example
```lua
toNumber("1234") // -> 1234
```

### toInteger(str) -> int
Converts a string to an integer 

#### Example
```lua
toInteger("1234") // -> 1234
```

### print(string)
Prints the string to the log output 

#### Example
```lua
print("Hello, World!")
```

## 🧮 Math API

### abs(num) -> num
Returns the absolute value of a number 

#### Example
```lua
abs() // -> 10 -> 10
```

### acos(num) -> num
Returns the arc cosine of a number (in radians) 

#### Example
```lua
acos(0) // -> 1.5708
```

### asin(num) -> num
Returns the arc sine of a number (in radians) 

#### Example
```lua
asin(1) // -> 1.5708
```

### atan(num) -> num
Returns the arc tangent of a number (in radians) 

#### Example
```lua
atan(1) // -> 0.7854
```

### atan2(num, num) -> num
Returns the arc tangent of y/x (in radians) 

#### Example
```lua
atan2(1, 1) // -> 0.7854
```

### ceil(num) -> int
Rounds a number up to the nearest integer 

#### Example
```lua
ceil(1.2) // -> 2
```

### cos(num) -> num
Returns the cosine of a number (in radians) 

#### Example
```lua
cos(0) // -> 1
```

### cosh(num) -> num
Returns the hyperbolic cosine of a number 

#### Example
```lua
cosh(0) // -> 1
```

### deg(num) -> num
Converts radians to degrees 

#### Example
```lua
deg(3.1416) // -> 180
```

### exp(num) -> num
Returns the exponential function e^x 

#### Example
```lua
exp(1) // -> 2.7183
```

### floor(num) -> int
Rounds a number down to the nearest integer 

#### Example
```lua
floor(1.9) // -> 1
```

### fmod(num, num) -> num
Returns the remainder of division (modulus) 

#### Example
```lua
fmod(5.3, 2) // -> 1.3
```

### frexp(num) -> num, int
Returns the normalized fraction and exponent of a number 

#### Example
```lua
frexp(8) // -> 0.5, 4
```

### ldexp(num, int) -> num
Multiplies a number by 2 raised to an exponent 

#### Example
```lua
ldexp(0.5, 4) // -> 8
```

### log(num) -> num
Returns the natural logarithm of a number 

#### Example
```lua
log(10) // -> 2.3026
```

### log10(num) -> num
Returns the base-10 logarithm of a number 

#### Example
```lua
log10(100) // -> 2
```

### max(num, ...) -> num
Returns the maximum value among arguments 

#### Example
```lua
max(1, 3, 7, 2) // -> 7
```

### min(num, ...) -> num
Returns the minimum value among arguments 

#### Example
```lua
min(1, 3, 7, 2) // -> 1
```

### modf(num) -> num, num
Returns the integer and fractional parts of a number 

#### Example
```lua
modf(5.75) // -> 5, 0.75
```

### pow(num, num) -> num
Returns x raised to the power of y 

#### Example
```lua
pow(2, 3) // -> 8
```

### rad(num) -> num
Converts degrees to radians 

#### Example
```lua
rad(180) // -> 3.1416
```

### random(int, int) -> int
Returns a random integer between m and n 

#### Example
```lua
random(1, 10) // -> (random value between 1 and 10)
```

### randomseed(int) -> void
Sets the seed for the random number generator 

#### Example
```lua
randomseed(42) // -> (sets random seed)
```

### huge() -> num
Returns the representation of positive infinity 

#### Example
```lua
huge() // -> inf
```

### pi() -> num
Returns the value of π 

#### Example
```lua
pi() // -> 3.1416
```

## 🤖 OS API

### clock() -> num
Returns the processor time consumed by the program 

#### Example
```lua
clock() // -> (CPU time in milliseconds)
```

### date(str, int) -> str
Formats a given timestamp using a format string 

#### Example
```lua
date("%Y) // -> %m-%d", 1700000000 -> "2023-11-14"
```

### difftime(int, int) -> num
Returns the difference in seconds between two time values 

#### Example
```lua
difftime(1700000100, 1700000000) // -> 100
```

## 🔤 String API

### upper(str) -> str
Converts a string to uppercase 

#### Example
```lua
upper("hello") // -> "HELLO"
```

### lower(str) -> str
Converts a string to uppercase 

#### Example
```lua
lower("HELLO") // -> "hello"
```

### gsub(str, find, replace) -> str
Replaces occurrences of find with replace in str 

#### Example
```lua
gsub("hello world", "world", "lua") // -> "hello lua"
```

### find(str, str) -> int
Finds the first occurrence of find in str 

#### Example
```lua
find("hello world", "world") // -> 7
```

### reverse(str) -> str
Reverses the string 

#### Example
```lua
reverse("hello") // -> "olleh"
```

### format(str, ...) -> str
Formats a string using sprintf-style formatting 

#### Example
```lua
format("%d + %d = %d", 2, 3, 5) // -> "2 + 3 = 5"
```

### char(int) -> str
Returns the character corresponding to the ASCII code 

#### Example
```lua
char(65) // -> "A"
```

### byte(str, int) -> int
Returns the ASCII code of the character at the given index 

#### Example
```lua
byte("A") // -> 65
```

### len(str) -> int
Returns the length of a string 

#### Example
```lua
len("hello") // -> 5
```

### rep(str, int) -> str
Repeats a string count times 

#### Example
```lua
rep("Lua ", 3) // -> "Lua Lua Lua "
```

### interpolate(str, table) -> str
Replaces placeholders in a template string with values from a table 

#### Example
```lua
interpolate("Hello, __{{name}}__!", {name: "World"}) // -> "Hello, World!"
```

### sub(str, int, int?) -> str
Extracts a substring from start to end (inclusive) 

#### Example
```lua
sub("hello", 2, 4) // -> "ell"
```

### match(str, str) -> str?
Returns the first match of the pattern in the string 

#### Example
```lua
match("hello 123", "\d+") // -> "123"
```

### gmatch(str, str) -> function
Returns an iterator for all matches of the pattern in the string 

#### Example
```lua
gmatch("hello 123 world", "\w+") // -> iterator("hello", "123", "world")
```

