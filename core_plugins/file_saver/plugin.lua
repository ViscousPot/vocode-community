function applyDecoration(text, decoration)
    return string.format(decoration, text)
end

function add(settings, data)
    if (settings["Content Template File Path"] and settings["Content Template File Path"] ~= '') then
      result = file.copy("Content Template File Path", "Target Folder Path", applyDecoration(data["text"], settings["Formatting"]))
      if not result then
        return false
      end
    else
      result = file.open("Target Folder Path", applyDecoration(data["text"], settings["Formatting"]))
      if not result then
        return false
      end

      file.close()
    end
    return true
end

function remove(settings, data)
  result = file.delete("Target Folder Path", applyDecoration(data["text"], settings["Formatting"]))
  if not result then
    return false
  end
  return true
end

function getInitialSettings()
    return {
        { name = "Target Folder Path", _description = "The target folder where files should be created." ,  type = "folder" },
        { name = "Formatting", _description = "Defines a custom template for naming files based on transcribed text.", type = "prefix_suffix", _defaultPrefix = "", _hintPrefix = "prefix+", _defaultSuffix = "", _hintSuffix = "+suffix" },
        { name = "Content Template File Path", _description = "A predefined template file to structure the content of the saved files.", _optional = true, type = "file"},
    }
end