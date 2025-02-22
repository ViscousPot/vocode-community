function applyDecoration(text, decoration)
    return string.format(decoration, text)
end

function writeAtOffsetToFile(settings, data, editOffset)
    for i = 1, math.abs(editOffset) do
        if editOffset > 0 then
            file.readForwardLine()
        elseif editOffset < 0 then
            file.readBackwardLine()
        end
    end

    local adjustedPosition = file.getPosition()

    local remainingBytes = file.read(file.getLength() - adjustedPosition)
    file.setPosition(adjustedPosition)

    if editOffset >= 0 then
        file.writeString(applyDecoration(data["text"], settings["Formatting"]) .. '\n')
    else
        file.writeString('\n' .. applyDecoration(data["text"], settings["Formatting"]))
    end
    file.writeString(remainingBytes)
end

function add(settings, data)
    print(settings["Target String"])
    print(settings["Target File Path"])
    print(data["text"])
    local searchString = settings["Target String"]

    result = file.open("Target File Path")
    if not result then
      return false
    end
    
    local editOffset = tonumber(settings["Edit Offset"]) or 0

    local position = 0
    file.setPosition(0);

    if string.len(searchString) < 1 then
      if editOffset < 0 then
          file.setPosition(file.getLength())
      else
          file.setPosition(0)
      end

      writeAtOffsetToFile(settings, data, editOffset)
      file.close()
      return true
    end

    while file.getPosition() < file.getLength() do
      position = file.getPosition()
      local line = file.readForwardLine();

      if (string.find(line, searchString)) then 

        if editOffset < 0 then
            file.setPosition(position)
        end

        writeAtOffsetToFile(settings, data, editOffset)
        file.close()
        return true
      end
    end

    file.close()
    return true
end

function remove(settings, data)
    result = file.open("Target File Path")
    if not result then
      return false
    end
    local position = 0
    file.setPosition(0);

    local originalText = applyDecoration(data["text"], settings["Formatting"])

    while file.getPosition() < file.getLength() do
      position = file.getPosition()
      local line = file.readForwardLine();

      if (line == originalText) then 
        local endOfLinePosition = file.getPosition()

        local fileLength = file.getLength()

        local remainingBytes = file.read(fileLength - endOfLinePosition)
        file.setPosition(position)

        file.writeString(remainingBytes)
        file.truncate(fileLength - string.len(originalText .. '\n'))
                
        file.close()
        return true
      end
    end

    file.close()
    return true
end

function getInitialSettings()
    return {
        { name = "Target File Path", _description = "The file path of the target file to be edited." ,  type = "file" },
        { name = "Formatting", _description = "Defines the prefix and suffix to apply to the text being inserted.", type = "prefix_suffix", _defaultPrefix = "", _hintPrefix = "prefix+", _defaultSuffix = "", _hintSuffix = "+suffix" },
        { name = "Target String", _description = "The plugin will search for the first line containing this string to determine the location for editing." , type = "text", _default = "", _hint = "leave empty to edit relative to EOF" },
        { name = "Edit Offset", _description = "An integer (+-) specifying the number of lines relative to the anchor string's location where the editing should occur.", type = "number", _default = -1, _hint = "-1" },
    }
end