function applyDecoration(text, decoration)
    return string.format(decoration, text)
end

function writeAtOffsetToFile(settings, data, editOffset)
    for i = 1, math.abs(editOffset) do
        if editOffset > 0 then
            file_readForwardLine()
        elseif editOffset < 0 then
            file_readBackwardLine()
        end
    end

    local adjustedPosition = file_getPosition()

    local remainingBytes = file_read(file_getLength() - adjustedPosition)
    file_setPosition(adjustedPosition)

    if editOffset >= 0 then
        file_writeString(applyDecoration(data["text"], settings["Formatting"]) .. '\n')
    else
        file_writeString('\n' .. applyDecoration(data["text"], settings["Formatting"]))
    end
    file_writeString(remainingBytes)
end

function add(settings, data)
    print(settings["Target String"])
    print(settings["Target File Path"])
    print(data["text"])
    local searchString = settings["Target String"]

    result = file_open("Target File Path")
    if not result then
      return false
    end
    
    local editOffset = tonumber(settings["Edit Offset"]) or 0

    local position = 0
    file_setPosition(0);

    if string.len(searchString) < 1 then
      if editOffset < 0 then
          file_setPosition(file_getLength())
      else
          file_setPosition(0)
      end

      writeAtOffsetToFile(settings, data, editOffset)
      file_close()
      return true
    end

    while file_getPosition() < file_getLength() do
      position = file_getPosition()
      local line = file_readForwardLine();

      if (string.find(line, searchString)) then 

        if editOffset < 0 then
            file_setPosition(position)
        end

        writeAtOffsetToFile(settings, data, editOffset)
        file_close()
        return true
      end
    end

    file_close()
    return true
end

function edit(settings, data, newText)
    result = file_open("Target File Path")
    if not result then
      return false
    end
    local position = 0
    file_setPosition(0);

    local originalText = applyDecoration(data["text"], settings["Formatting"])

    while file_getPosition() < file_getLength() do
      position = file_getPosition()
      local line = file_readForwardLine();

      if (line == originalText) then 
        local endOfLinePosition = file_getPosition()

        local fileLength = file_getLength()
        
        local remainingBytes = file_read(fileLength - endOfLinePosition)
        file_setPosition(position)

        local text = applyDecoration(newText, settings["Formatting"]) .. '\n'

        file_writeString(text) 
        file_writeString(remainingBytes)

        file_truncate(fileLength + (string.len(text) - string.len(originalText .. '\n')))
      end
    end

    file_close()
    return true
end


function remove(settings, data)
    result = file_open("Target File Path")
    if not result then
      return false
    end
    local position = 0
    file_setPosition(0);

    local originalText = applyDecoration(data["text"], settings["Formatting"])

    while file_getPosition() < file_getLength() do
      position = file_getPosition()
      local line = file_readForwardLine();

      if (line == originalText) then 
        local endOfLinePosition = file_getPosition()

        local fileLength = file_getLength()

        local remainingBytes = file_read(fileLength - endOfLinePosition)
        file_setPosition(position)

        file_writeString(remainingBytes)
        file_truncate(fileLength - string.len(originalText .. '\n'))
      end
    end

    file_close()
    return true
end

function getInitialSettings()
    return {
        { name = "Target Folder Path", _description = "The target folder where files should be created." ,  type = "folder" },
        { name = "Formatting", _description = "Defines a custom template for naming files based on transcribed text.", type = "formatting", _hintPrefix = "prefix", _hintSuffix = "suffix" },
        { name = "Content Template File Path", _description = "A predefined template file to structure the content of the saved files.", optional = true, type = "file"},
    }
end