---
title: File API
---

<!-- > [!warning] This guide assumes you have experience writing Lua. -->

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

<!-- 
This is a comprehensive guide to the `File API` bindings available to Vocode Community Plugins. These bindings enable your plugins to interact with the device filesystem. -->

### 📄 `file.open(settingName)`
Opens a file for reading or writing based on the settings provided.

#### Parameters:
- `settingName` (string): The setting key for the file path in the `exporterItem`.

#### Example
```lua
file.open("settings")
```

### 📑 `file.setPosition(position)`
Sets the file read/write position to the specified value.

#### Parameters:
- `position` (number): The position to set in the file.

#### Example
```lua
file.setPosition(100)
```

### `file.getPosition()`
Gets the current position in the file.

#### Example
```lua
local position = file.getPosition()
print(position)
```

### `file.getLength()`
Gets the length of the file.

#### Example
```lua
local length = file.getLength()
print(length)
```

### `file.readForwardLine()`
Reads a line of text forward from the current file position.

#### Example
```lua
local line = file.readForwardLine()
print(line)
```

### `file.readBackwardLine()`
Reads a line of text backward from the current file position.

#### Example
```lua
local line = file.readBackwardLine()
print(line)
```

### `file.read(length)`
Reads a specified number of bytes from the file.

#### Parameters:
- `length` (number): The number of bytes to read.

#### Example
```lua
local data = file.read(50)
print(data)
```

### 📝 `file.writeString(string)`
Writes a string to the file.

#### Parameters:
- `string` (string): The string to write to the file.

#### Example
```lua
file.writeString("Hello, world!")
```

### `file.countBytes(string)`
Counts the number of bytes in a given string.

#### Parameters:
- `string` (string): The string to count bytes for.

#### Example
```lua
local byteCount = file.countBytes("Hello")
print(byteCount)
```

### `file.truncate(length)`
Truncates the file to a specific length.

#### Parameters:
- `length` (number): The length to truncate the file to.

#### Example
```lua
file.truncate(100)
```

### 📃 `file.close()`
Closes the file.

#### Example
```lua
file.close()
```
