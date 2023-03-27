#!/usr/bin/env python3

import argparse
import sys
import os
import yaml


class GptInterop:
    def __init__(self):
        self.commands = {
            "md5": self.md5,
            "get_schema": self.get_schema,
            "get_interface": self.get_interface,
            "get_code": self.get_code,
            "prompt": self.prompt,
            "master": self.master,
        }

    def md5(self, args):
        """
        Calculate the MD5 checksum of a file or string
        """
        # implementation omitted

    def get_schema(self, args):
        """
        Get the YAML schema definition for a subsystem
        """
        schema_path = f"virtual-repo/schema/{args.subsystem}.yaml"
        with open(schema_path) as f:
            print(f.read())

    def get_interface(self, args):
        """
        Get the interface definition for a subsystem
        """
        interface_path = f"virtual-repo/interface/{args.subsystem}.md"
        with open(interface_path) as f:
            print(f.read())

    def get_code(self, args):
        """
        Get the Python code for a subsystem
        """
        code_path = f"scripts/gpt-interop-{args.subsystem}.py"
        with open(code_path) as f:
            print(f.read())

    def prompt(self, args):
        """
        Output a prompt describing the purpose of the tool and how to use it
        """
        # implementation omitted

    def master(self, args):
        """
        Run a large YAML payload of multiple requests
        """
        # implementation omitted

    def get_capabilities(self):
        """
        Returns a dictionary of available commands and their descriptions
        """
        return {
            "md5": "Calculate the MD5 checksum of a file or string",
            "get_schema": "Get the YAML schema definition for a subsystem",
            "get_interface": "Get the interface definition for a subsystem",
            "get_code": "Get the Python code for a subsystem",
            "prompt": "Output a prompt describing the purpose of the tool and how to use it",
            "master": "Run a large YAML payload of multiple requests",
        }

    def get_parser(self):
        parser = argparse.ArgumentParser(description="GPT-Interop command-line tool")
        subparsers = parser.add_subparsers(title="subcommands")

        for command, method in self.commands.items():
            subparser = subparsers.add_parser(command)
            subparser.set_defaults(func=method)

            if command in ["get_schema", "get_interface", "get_code"]:
                subparser.add_argument("subsystem")

        return parser

    def run_command(self, command_str):
        args = command_str.split()

        parser = self.get_parser()
        parsed_args = parser.parse_args(args)

        if not hasattr(parsed_args, "func"):
            print(f"Invalid command: {command_str}")
            return

        parsed_args.func(parsed_args)


    def run(self):
        """
        Executes the command based on the user input.
        """
        while True:
            user_input = input("Enter command: ")
            command = self.parse_command(user_input)
            if not command:
                print("Invalid command. Enter 'help' for a list of available commands.")
                continue
            if command["command"] == "exit":
                break
            if command["command"] == "help":
                self.print_help()
                continue
            if command["command"] == "prompt":
                self.print_prompt()
                continue
            if command["command"] == "schema":
                self.print_schema(command["subsystem"])
                continue
            if command["command"] == "interface":
                self.print_interface(command["subsystem"])
                continue
            if command["command"] == "code":
                self.print_code(command["subsystem"])
                continue
            if command["command"] == "get_capabilities":
                print(self.get_capabilities(command["subsystem"]))
                continue
            if command["command"] == "get_code":
                print(self.get_code(command["subsystem"]))
                continue
            if command["command"] == "get_schema":
                print(self.get_schema(command["subsystem"]))
                continue
            if command["command"] == "get_interface":
                print(self.get_interface(command["subsystem"]))
                continue
            if command["command"] == "md5":
                self.virtual_repo.md5(command["params"]["file"])
                continue
            if command["command"] == "master":
                payload = command["params"]["payload"]
                self.process_master_payload(payload)
                continue
            print("Invalid command. Enter 'help' for a list of available commands.")


if __name__ == "__main__":
    interop = GptInterop()
    interop.run()
