---
title: Core Plugins
---

## TextInjector
The **TextInjector** plugin allows users to insert formatted text into a specified location in a target file. It searches for a specific string within the file and inserts the provided text at a user-defined offset relative to the found string. This makes it ideal for dynamic content insertion in configuration files, documentation, or other structured files.
<details>
    <summary>details...</summary>
    <p></p>
    <h3>Key Features</svg></a></h3>
    <ul>
    <li><strong>Target File Path</strong>: Define the location of the file where the text will be inserted.</li>
    <li><strong>Text Formatting</strong>:  Add custom <strong>prefix</strong> and <strong>suffix</strong> to the inserted text for easy identification.</li>
    <li><strong>Search String</strong>: Choose the string in the file to use as a reference point for the insertion.</li>
    <li><strong>Edit Offset</strong>: Set a precise offset (positive or negative) from the found string for insertion location.</li>
    </ul>
    <h3>Example Use Case</svg></a></h3>
    <p>Great for Obsidian Quick Capture and works with any other plaintext notes application!</p>
</details>

## IntentSender
The **IntentSender** plugin enables users to send custom Android intents to specified apps, activities, services, or broadcast receivers. It allows seamless automation and integration with Tasker or other intent-handling applications by sending text and timestamps as extras.
<details>
    <summary>details...</summary>
    <p></p>
    <h3>Key Features</h3>
    <ul>
    <li><strong>Target Type</strong>: Send intents to an <strong>Activity</strong>, <strong>Service</strong>, or <strong>Broadcast Receiver</strong>.</li>
    <li><strong>Package Name</strong>: Define the receiving app’s package name.</li>
    <li><strong>Class Name</strong>: Specify the exact activity or service to handle the intent.</li>
    <li><strong>Action</strong>: Set a custom Android intent action.</li>
    <li><strong>Extras</strong>: Automatically include text and timestamps in the intent for dynamic handling.</li>
    </ul>
    <h3>Example Use Case</h3>
    <p>Perfect for triggering automation in Tasker, launching specific app activities, or sending structured data to background services (such as <a href="https://github.com/ViscousPot/GitSync">GitSync</a>?).</p>
</details>
