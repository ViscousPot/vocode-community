---
title: File API
---

<!-- > [!warning] This guide assumes you have experience writing Lua. -->

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

<!-- This is a comprehensive guide to the `File API` bindings available to Vocode Community Plugins. These bindings enable your plugins to interact with the device filesystem. -->

### 📄 file.open(settingName, applyTemplateFn)
Opens a file for reading or writing based on the provided settings item, applying a template function to modify the file name if provided. (Creates the specified file if it does not already exist) 

#### Parameters
- `settingName` (string): The setting key for the file path in the `exporterItem`.

- `applyTemplateFn` (string, optional): The name of the function to modify the file name.

#### Example
```lua
file.open("settings", "templateFunction")
```

### 📑 file.setPosition(position)
Sets the file read/write position to the specified value 

#### Parameters
- `position` (number): The position to set in the file.

#### Example
```lua
file.setPosition(100)
```

### file.getPosition() -> num
Gets the current position in the file 

#### Example
```lua
file.getPosition() // -> 100
```

### file.getLength() -> num
Gets the length of the file 

#### Example
```lua
file.getLength() // -> 100
```

### file.readForwardLine() -> str
Reads a line of text forward from the current file position 

#### Example
```lua
file.readForwardLine() // -> "Hello World!!!"
```

### file.readBackwardLine() -> str
Reads a line of text backward from the current file position 

#### Example
```lua
file.readBackwardLine() // -> "Hello World!!!"
```

### file.read(length)
Reads a specified number of bytes from the file 

#### Example
```lua
file.read(50)
```

### 📝 file.writeString(string)
Writes a string to the file 

#### Parameters
- `string` (string): The string to write to the file.

#### Example
```lua
file.writeString("Hello, world!")
```

### file.countBytes(string) -> int
Counts the number of bytes in a given string 

#### Parameters
- `string` (string): The string to count bytes for.

#### Example
```lua
file.countBytes("Hello") // -> 5
```

### file.truncate(length)
Truncates the file to a specific length 

#### Parameters
- `length` (number): The length to truncate the file to.

#### Example
```lua
file.truncate(100)
```

### 📃 file.close(applyTemplateFn)
Closes the file and optionally applies a template function to modify the file name before saving 

#### Parameters
- `applyTemplateFn` (string, optional): The name of the function to modify the file name before saving.

#### Example
```lua
file.close("templateFunction")
```

