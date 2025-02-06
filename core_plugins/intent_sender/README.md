# IntentSender Plugin

## Overview
The **IntentSender** plugin allows users to send custom Android intents with a specified target type, package name, class name, and action. The plugin sends the entered text and timestamp as an extra with the intent, enabling seamless integration with Tasker or other automation apps that support intent handling.

## Features
- **Target**: Define the type of package to send the intent to, supporting Activity, Service, and Broadcast Receiver.
- **Package Name**: Define the target app's package name.
- **Class Name**: Set the class name of the target activity or service.
- **Action**: Specify the action for the intent.
- **Text and Timestamp as Extra**: Send the text and timestamp as an extra in the intent.

## Installation
**IntentSender** is a `Vocode Core Plugin`

## Configuration
Once the plugin is added, configure it with the following options:

#### Target Type

Choose whether the intent should be sent to an **Activity**, **Service**, or **Broadcast Receiver**.

#### Package Name
Provide the package name of the target app that will receive the intent.

#### Class Name
Enter the class name of the activity or service within the target app that should handle the intent.

#### Action
Specify the action to be used in the intent, which can be any valid Android intent action.

## Usage Example
1. **Target Type**: `Activity`
1. **Package**: `com.example.targetapp`
2. **Component**: `com.example.targetapp.TargetActivity`
3. **Action**: `com.example.targetapp.ACTION_SEND_TEXT`

When text is entered, the plugin sends an intent with the specified package name, class name, action, and text extra, which can be handled by the target app.

## License
This plugin is licensed under the [MIT License](../../LICENSE.md).

## Support
For any issues or questions, please contact support at [bugs.viscouspotential@gmail.com].
