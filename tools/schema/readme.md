# Schema

This directory contains YAML schema definitions for different types of content that can be managed by the `gpt-interop` scripts. 

For more information on the available schemas and their purpose, see the [schema documentation](../docs/schema/readme.md).

## Available Schemas

### Issue Schema

The `issue.yaml` file defines a generic schema for issue/task tracking systems. This schema is designed to be flexible enough to map to different issue/task tracking systems, such as Jira, Trello, and GitHub. 

### Wiki Schema

The `wiki.yaml` file defines a generic schema for wiki pages. This schema is designed to be flexible enough to map to different wiki systems, such as Wikipedia, GitHub wiki, and Confluence. 

## Purpose

The purpose of using YAML schema definitions is to provide a common structure for data that can be used across different systems. By defining a standard schema for different types of content, we can write code that works with different systems without having to write system-specific code for each one. This makes it easier to integrate different systems and reduces the amount of code duplication that is needed for each integration.

