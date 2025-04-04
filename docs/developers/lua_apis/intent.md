---
title: Intent API
---

<!-- > [!warning] This guide assumes you have experience writing Lua. -->

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

<!-- This is a comprehensive guide to the `Intent API` bindings available to Vocode Community Plugins. These bindings enable your plugins to interact with the device filesystem. -->

### intent.send(target, action, className, packageName, text, timestamp)
Sends an Android intent to a specified target (Broadcast Receiver, Service, or Activity) 

#### Parameters
- `target` (string): The target for the intent. Options are "Broadcast Receiver", "Service", or "Activity".

- `action` (string): The action for the intent.

- `className` (string): The class name of the component.

- `packageName` (string): The package name of the app.

- `text` (string): The text to include in the intent.

- `timestamp` (string): A timestamp for the intent.

#### Example
```lua
intent.send("Broadcast Receiver", "com.example.ACTION", "com.example.MyClass", "com.example", "Sample text", "1738461928")
```

