# FileSaver Plugin

## Overview
The **FileSaver** plugin automatically creates text files in specified folders, using transcribed text as filenames. This plugin is ideal for organizing and storing transcriptions efficiently based on customizable naming and content templates.

## Features
- **Target Folder Path**: Specify the target folder where files should be created.
- **Filename Template**: Define a custom template for naming files based on transcribed text.
- **Content Template Path**: Use a predefined template file to structure the content of the saved files.

## Installation
**FileSaver** is a `Vocode Core Plugin`

## Configuration
Once the plugin is added, configure it with the following options:

#### Folder Path
Specify the path to the folder where files should be created.

#### Filename Template
Define the format for naming files. Use placeholders for dynamic values:
- `{transcription}` - The transcribed text.
- `{timestamp}` - The current timestamp.

Example: `Transcription_{timestamp}_{transcription}.txt`

#### Content Template File Path
Provide the path to a template file that defines the structure of the content.

## Usage Example
1. **Folder Path**: `/path/to/transcription_files`
2. **Filename Template**: `Transcript_{timestamp}.txt`
3. **Content Template Path**: `/path/to/template.md`

When a transcription is processed, the plugin will create a file named, e.g., `Transcript_20231225_101530.txt` in the target folder, using the specified content template.

## License
This plugin is licensed under the [MIT License](LICENSE).

## Support
For any issues or questions, please contact support at [bugs.viscouspotential@gmail.com].

