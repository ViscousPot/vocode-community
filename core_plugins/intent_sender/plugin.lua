function add(settings, data)
    intent.send(settings["Target"], settings["Package"], settings["Component"], settings["Action"], data["text"], data["timestamp"])
    return true
end

function edit(settings, data, newText)
    intent.send(settings["Target"], settings["Package"], settings["Component"], settings["Action"], newText, data["timestamp"])
    return true
end


function remove(settings, data)
    intent.send(settings["Target"], settings["Package"], settings["Component"], settings["Action"], data["text"], data["timestamp"])
    return true
end

function getInitialSettings()
    return {
        { name = "Target", _description = "The type of the target app that will receive and handle the intent." , type = "dropdown", options = { "Activity", "Broadcast Receiver", "Service" } },
        { name = "Package", _description = "The package name of the target app that will receive the intent." , type = "text", _hint = "com.example.app" },
        { name = "Component", _description = "The class name of the activity or service within the target app that should handle the intent.", type = "text", _hint = "com.example.app.TargetActivity" },
        { name = "Action", _description = "The action to be used in the intent." , type = "text", _hint = "com.example.app.ACTION_SEND_TEXT" },
    }
end