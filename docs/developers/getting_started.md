---
title: "Getting Started"
---
<!-- ---
title: Create Your Own Plugin
--- -->

<!-- ## Extend Vocode with Custom Plugins -->

Vocode allows you to expand its capabilities by creating your own plugins using our [**Lua APIs**](developers/lua_apis). Whether you want to automate workflows, enhance transcriptions, or integrate with other tools, custom plugins give you full control over your voice-powered experience.

## 🚀 Getting Started

### 1️⃣ Set Up Your Development Environment
To start building plugins for Vocode:
- **Fork the example plugin** from [GitHub](https://github.com/ViscousPot/vocode-community).
- Add your fork in the Vocode app.
- Make changes and pull updates directly within the app to test your modifications.


### 2️⃣ Understanding the Plugin Structure
A Vocode plugin consists of:
- **`plugin.lua`** – The main script defining your plugin’s behavior.
- **`README.md`** – Documentation for your plugin.
- **`LICENSE.md`** (optional) – A license file for open-source distribution.

### 3️⃣ Writing Your First Plugin
Here’s a snippet of the example plugin:

```lua
function applyDecoration(text, decoration)
    return string.format(decoration, text)
end

function add(settings, data)
    print(data["text"])
    notification.toast(string.format('Added "%s"', data["text"]))
    return true
end

function remove(settings, data)
    print(data["text"])
    notification.toast(string.format('Removed "%s"', data["text"]))
    return true
end

function getInitialSettings()
    return { }
end
```

### 4️⃣ Testing Your Plugin
- Save your changes in your forked repository.
- Pull updates within the Vocode app.
- Test it out!

### 5️⃣ Sharing Your Plugin
Once your plugin is ready, you can:
- Use it privately for personal automation.
- Share it with the **Vocode Community** by making a **pull request** to [this repository](https://github.com/ViscousPot/vocode-community).
- Add your plugin details in `vocode-community/community_plugins.json` following this format:

```json
{
    "your_unique_plugin_id": {
        "name": "Your Plugin Name",
        "description": "A brief description of your plugin.",
        "url": "YourGitHubUsername/your-plugin-repo",
        "permissions": [
            "",
            "",
            ...
        ]
    }
}
```
### 5️⃣ Sharing Your Plugin
Once your plugin is ready, you can:
- Use it privately for personal automation.
- Share it with the **Vocode Community** on [GitHub](https://github.com/ViscousPot/vocode-community).

## 🔗 Resources
- [Lua API Documentation](developers/lua_apis/)
- [Community Plugins](https://github.com/ViscousPot/vocode-community)

Start building today and customize Vocode to fit your workflow! 🎙🚀

