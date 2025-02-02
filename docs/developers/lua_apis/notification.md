---
title: Notification API
---

<!-- > [!warning] This guide assumes you have experience writing Lua. -->

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

<!-- 
This is a comprehensive guide to the `File API` bindings available to Vocode Community Plugins. These bindings enable your plugins to interact with the device filesystem. -->

### `notification.toast(text)`
Displays a toast notification with the given text.

#### Parameters:
- `text` (string): The message to display in the toast notification.

#### Example
```lua
notification.toast("This is a toast message")
```
