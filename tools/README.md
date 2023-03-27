GPT Interop
===========================

GPT Interop is a collection of Python scripts that enable easy integration between GPT-based language models and external systems such as issue tracking systems, wikis, and code repositories. The scripts are designed to be extensible and flexible, allowing users to easily add new integrations as needed.

# Goals
The goal of this project is to provide a simple and unified interface for GPT-based language models to interact with external systems. The scripts should be easy to use and require minimal configuration to get up and running.

# Features
The following features are currently supported:

* Capabilities: List and search for available capabilities and their descriptions.
* Code: List, search, and display the contents of code files.
* Schema: List, search, and display the format and description of schema definitions.
* Interface: List, search, and display the format and description of interface definitions.
* Prompt: Output a prompt that describes the available commands and their usage.
* Master: Execute the master command, which takes control of the session.
* Issues: Interact with remote issue tracking systems.
* Wiki: Interact with remote wiki pages.
* Disk: Interact with local and remote files.
* Installation
* To install the gpt-interop scripts, simply clone this repository and run the scripts from the scripts directory.

# Usage
To use the gpt-interop scripts, simply run the desired command from the command line, passing any necessary arguments. For example:

```bash
gpt-interop capabilities
gpt-interop code list
gpt-interop schema show issue,wiki
gpt-interop prompt
```

For more detailed usage instructions, see the prompt command output or refer to the documentation for each command.

# Collaboration between Human Operators and Chatbots using gpt-interop

The `gpt-interop` script allows human operators and chatbots to collaborate by enabling the execution of system commands via a chat interface. The chatbot can request specific actions to be performed by the human operator, who in turn can use the `gpt-interop` script to carry out these actions on a remote system.

To use the gpt-interop script, the human operator will first need to run the gpt-interop prompt command. This will output a prompt message that describes the available commands and their usage, as well as any relevant instructions for using the tool.

The human operator can then copy and paste the output of the gpt-interop prompt command into the chatbot interface. The chatbot can then request specific actions to be performed, such as searching for code items, retrieving schema definitions, or updating an issue or wiki page.

When the chatbot requests an action, the human operator will execute the relevant gpt-interop command on their local system, using any required arguments provided by the chatbot. Once the command has completed, the human operator will copy and paste the output of the command back into the chatbot interface for further processing by the chatbot.

This workflow allows chatbots and human operators to collaborate in real-time, while leveraging the full capabilities of both systems to achieve their desired goals.

## Example 
using the not yet supported redis extension


> User: Can you help me come up with some slogans for my new cat cafe?

> ChatGPT: Of course! How about we generate a list of potential slogans and you can pick your favorite?

> User: That sounds great, let's do it!

> ChatGPT: Alright, here are five potential slogans:
	1. The Cat's Meow Cafe: The Best Cats in Town!
	2. Cuddle Up with a Furry Friend at the Best Cats in the World Cafe!
	3. Purrfect Company at the Best Cats in the World Cafe!
	4. From Whiskers to Paws, the Best Cats in the World Cafe Has it All!
	5. Feline Fine at the Best Cats in the World Cafe!

> User: Hmm, I think #4 is the best. Let's use that one.

> ChatGPT: Great choice! To store that slogan in our Redis database, please run the following command:
	```bash
	gpt-interop redis set cafe-slogan <<EOF
	yaml:
	  slogan: From Whiskers to Paws, the Best Cats in the World Cafe Has it All!
	EOF
	```

> User: done! here is the response
	```
        gpt-interop: redis set cafe-slogan OK  
        ```

# Contributing
Contributions to the gpt-interop project are welcome! If you have an idea for a new feature or would like to improve an existing feature, feel free to submit a pull request or open an issue.

# License
This project is licensed under the MIT License. See the LICENSE file for more information.
