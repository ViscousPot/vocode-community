# IntentSender Plugin

## Overview
The **IntentSender** plugin allows users to send custom Android intents with a specified package name, class name, and action. The plugin sends the entered text as an extra with the intent, enabling seamless integration with Tasker or other automation apps that support intent handling.

## Features
- **Package Name**: Define the target app's package name.
- **Class Name**: Set the class name of the target activity or service.
- **Action**: Specify the action for the intent.
- **Text as Extra**: Send the text as an extra in the intent.

## Installation
**IntentSender** is a `Vocode Core Plugin`

## Configuration
Once the plugin is added, configure it with the following options:

#### Package Name
Provide the package name of the target app that will receive the intent.

#### Class Name
Enter the class name of the activity or service within the target app that should handle the intent.

#### Action
Specify the action to be used in the intent, which can be any valid Android intent action.

## Usage Example
1. **Package Name**: `com.example.targetapp`
2. **Class Name**: `com.example.targetapp.TargetActivity`
3. **Action**: `com.example.targetapp.ACTION_SEND_TEXT`

When text is entered, the plugin sends an intent with the specified package name, class name, action, and text extra, which can be handled by the target app.

## License
This plugin is licensed under the [MIT License](../../LICENSE.md).

## Support
For any issues or questions, please contact support at [bugs.viscouspotential@gmail.com].
