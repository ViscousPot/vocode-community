---
title: Http API
---

<!-- > [!warning] This guide assumes you have experience writing Lua. -->

> [!info] Lua plugins in Vocode cannot access the Lua standard library
> For security, plugins can only access core libraries and those tied to granted permissions.

<!-- This is a comprehensive guide to the `Http API` bindings available to Vocode Community Plugins. These bindings enable your plugins to interact with the device filesystem. -->

### http.get(url, headers, body, cookies)
Sends a GET request to the specified URL with optional headers and cookies. 

#### Parameters
- `url` (string): The API endpoint to send the GET request to.

- `headers` (map, optional): A map of headers to include in the request.

- `body` (string, optional): The body of the POST request as a JSON string.

- `cookies` (map, optional): A map of cookies to include in the request.

#### Example
```lua
http.get("https://api.example.com/data", {"Authorization": "Bearer token"}, '', {"session": "abcd1234"})
```

### http.post(url, headers, body, cookies)
Sends a POST request to the specified URL with optional headers, body, and cookies. 

#### Parameters
- `url` (string): The API endpoint to send the POST request to.

- `headers` (map, optional): A map of headers to include in the request.

- `body` (string, optional): The body of the POST request as a JSON string.

- `cookies` (map, optional): A map of cookies to include in the request.

#### Example
```lua
http.post("https://api.example.com/data", {"Authorization": "Bearer token"}, '{"key": "value"}', {"session": "abcd1234"})
```

### http.put(url, headers, body, cookies)
 

#### Example
```lua
http.put("https://api.example.com/data", {"Authorization": "Bearer token"}, '{"key": "new_value"}', {"session": "abcd1234"})
```

### http.delete(url, headers, cookies)
 

#### Example
```lua
http.delete("https://api.example.com/data/1", {"Authorization": "Bearer token"}, {"session": "abcd1234"})
```

