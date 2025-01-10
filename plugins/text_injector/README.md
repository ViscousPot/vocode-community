# TextInjector Plugin

## Overview
The **TextInjector** plugin allows users to insert formatted text into a specified location in a target file. It searches for a specific string within the file and inserts the provided text at a user-defined offset relative to the found string. This plugin is ideal for precise text insertion based on dynamic file content.

## Features
- **Target File Path**: Select the file where the text will be inserted.
- **Text Formatting**: Define a prefix and suffix for the text to be written.
- **Search String**: Specify a string in the target file where the insertion will occur.
- **Edit Offset**: Set the offset from the found string where the text will be inserted.

## Installation
**TextInjector** is a `Vocode Core Plugin`

## Configuration
Once the plugin is added, configure it with the following options:

#### Target File Path
Specify the absolute path to the file where the text will be inserted.

#### Text Formatting
Enter the **prefix** and **suffix** that should surround the inserted text.

#### Search String
Provide the string within the target file where the insertion will occur. The plugin will search for this string and insert the new text relative to it.

#### Edit Offset
Set the offset (in characters) from the found search string where the text will be inserted. A positive value will insert the text after the search string, while a negative value will insert it before.

## Usage Example
1. **Target File Path**: `/path/to/file.txt`
2. **Text Formatting**: `<!-- Prefix -->` `<!-- text goes here -->` `<!-- Suffix -->`
3. **Search String**: `<!-- Insert Point -->`
4. **Edit Offset**: `-1`

The plugin will search for the string `<!-- Insert Point -->` in the file, and insert the formatted text `<!-- Prefix -->` `<!-- text goes here -->` `<!-- Suffix -->` 1 line before the line containing this string.

## License
This plugin is licensed under the [MIT License](LICENSE).

## Support
For any issues or questions, please contact support at [bugs.viscouspotential@gmail.com].
