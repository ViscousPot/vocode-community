---
title: Core APIs
---

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

## 🌏 Global

### `tonumber(value)`
Converts a string representation of a number to an integer.

#### Example
```lua
tonumber("123")
```

---

## 🧮 Math API

The `math` library includes various mathematical functions.

### `math.abs(x)`
Returns the absolute value of `x`.
```lua
math.abs(-10)
```

### `math.acos(x)`
Returns the arc cosine of `x` (in radians).
```lua
math.acos(0)
```

### `math.asin(x)`
Returns the arc sine of `x` (in radians).
```lua
math.asin(1)
```

### `math.atan(x)`
Returns the arc tangent of `x` (in radians).
```lua
math.atan(1)
```

### `math.atan2(y, x)`
Returns the arc tangent of `y/x` (in radians).
```lua
math.atan2(1, 1)
```

### `math.ceil(x)`
Rounds `x` up to the nearest integer.
```lua
math.ceil(1.2)
```

### `math.cos(x)`
Returns the cosine of `x` (in radians).
```lua
math.cos(0)
```

### `math.exp(x)`
Returns the exponential function `e^x`.
```lua
math.exp(1)
```

### `math.floor(x)`
Rounds `x` down to the nearest integer.
```lua
math.floor(1.9)
```

### `math.log(x)`
Returns the natural logarithm of `x`.
```lua
math.log(10)
```

### `math.max(x, ...)`
Returns the maximum value among arguments.
```lua
math.max(1, 3, 7, 2)
```

### `math.min(x, ...)`
Returns the minimum value among arguments.
```lua
math.min(1, 3, 7, 2)
```

### `math.pow(x, y)`
Returns `x` raised to the power of `y`.
```lua
math.pow(2, 3)
```

### `math.random(m, n)`
Returns a random integer between `m` and `n`.
```lua
math.random(1, 10)
```

### `math.pi`
Returns the value of π.
```lua
math.pi
```

---

## 🔤 String API

The `string` library provides utility functions for string manipulation.

### `string.upper(str)`
Converts a string to uppercase.
```lua
string.upper("hello")
```

### `string.lower(str)`
Converts a string to lowercase.
```lua
string.lower("HELLO")
```

### `string.gsub(str, find, replace)`
Replaces occurrences of `find` with `replace` in `str`.
```lua
string.gsub("hello world", "world", "Lua")
```

### `string.find(str, find)`
Finds the first occurrence of `find` in `str`.
```lua
string.find("hello world", "world")
```

### `string.reverse(str)`
Reverses the string.
```lua
string.reverse("hello")
```

### `string.format(format, ...)`
Formats a string using `sprintf`-style formatting.
```lua
string.format("%d + %d = %d", 2, 3, 2+3)
```

### `string.char(code)`
Returns the character corresponding to the ASCII code.
```lua
string.char(65)
```

### `string.byte(str, index)`
Returns the ASCII code of the character at the given index.
```lua
string.byte("A")
```

### `string.len(str)`
Returns the length of `str`.
```lua
string.len("hello")
```

### `string.rep(str, count)`
Repeats `str` `count` times.
```lua
string.rep("Lua ", 3)
```

