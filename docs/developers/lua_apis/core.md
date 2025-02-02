---
title: Core APIs
---

<!-- > [!warning] This guide assumes you have experience writing Lua. -->

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

<!-- This is a comprehensive guide to the `Core API` bindings available to Vocode Community Plugins. These bindings enable your plugins to utilize core mathematical and string operations, as well as additional helper functions. -->

## 🌏 Global

### `tonumber(value)`
Converts a string representation of a number to an integer.

#### Example
```lua
print(tonumber("123")) -- Output: 123
```

---

## 🧮 Math API

The `math` library includes various mathematical functions.

### `math.abs(x)`
Returns the absolute value of `x`.
```lua
print(math.abs(-10)) -- Output: 10
```

### `math.acos(x)`
Returns the arc cosine of `x` (in radians).
```lua
print(math.acos(0)) -- Output: 1.5708
```

### `math.asin(x)`
Returns the arc sine of `x` (in radians).
```lua
print(math.asin(1)) -- Output: 1.5708
```

### `math.atan(x)`
Returns the arc tangent of `x` (in radians).
```lua
print(math.atan(1)) -- Output: 0.7854
```

### `math.atan2(y, x)`
Returns the arc tangent of `y/x` (in radians).
```lua
print(math.atan2(1, 1)) -- Output: 0.7854
```

### `math.ceil(x)`
Rounds `x` up to the nearest integer.
```lua
print(math.ceil(1.2)) -- Output: 2
```

### `math.cos(x)`
Returns the cosine of `x` (in radians).
```lua
print(math.cos(0)) -- Output: 1
```

### `math.exp(x)`
Returns the exponential function `e^x`.
```lua
print(math.exp(1)) -- Output: 2.7183
```

### `math.floor(x)`
Rounds `x` down to the nearest integer.
```lua
print(math.floor(1.9)) -- Output: 1
```

### `math.log(x)`
Returns the natural logarithm of `x`.
```lua
print(math.log(10)) -- Output: 2.3026
```

### `math.max(x, ...)`
Returns the maximum value among arguments.
```lua
print(math.max(1, 3, 7, 2)) -- Output: 7
```

### `math.min(x, ...)`
Returns the minimum value among arguments.
```lua
print(math.min(1, 3, 7, 2)) -- Output: 1
```

### `math.pow(x, y)`
Returns `x` raised to the power of `y`.
```lua
print(math.pow(2, 3)) -- Output: 8
```

### `math.random(m, n)`
Returns a random integer between `m` and `n`.
```lua
print(math.random(1, 10)) -- Output: Random number between 1 and 10
```

### `math.pi`
Returns the value of π.
```lua
print(math.pi) -- Output: 3.1416
```

---

## 🔤 String API

The `string` library provides utility functions for string manipulation.

### `string.upper(str)`
Converts a string to uppercase.
```lua
print(string.upper("hello")) -- Output: HELLO
```

### `string.lower(str)`
Converts a string to lowercase.
```lua
print(string.lower("HELLO")) -- Output: hello
```

### `string.gsub(str, find, replace)`
Replaces occurrences of `find` with `replace` in `str`.
```lua
print(string.gsub("hello world", "world", "Lua")) -- Output: hello Lua
```

### `string.find(str, find)`
Finds the first occurrence of `find` in `str`.
```lua
print(string.find("hello world", "world")) -- Output: 7
```

### `string.reverse(str)`
Reverses the string.
```lua
print(string.reverse("hello")) -- Output: olleh
```

### `string.format(format, ...)`
Formats a string using `sprintf`-style formatting.
```lua
print(string.format("%d + %d = %d", 2, 3, 2+3)) -- Output: 2 + 3 = 5
```

### `string.char(code)`
Returns the character corresponding to the ASCII code.
```lua
print(string.char(65)) -- Output: A
```

### `string.byte(str, index)`
Returns the ASCII code of the character at the given index.
```lua
print(string.byte("A")) -- Output: 65
```

### `string.len(str)`
Returns the length of `str`.
```lua
print(string.len("hello")) -- Output: 5
```

### `string.rep(str, count)`
Repeats `str` `count` times.
```lua
print(string.rep("Lua ", 3)) -- Output: Lua Lua Lua
```