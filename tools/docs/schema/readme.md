# Schema

This directory contains YAML schema definitions for different types of content that can be managed by the `gpt-interop` scripts. 

## Available Schemas

### Issue Schema

The `issue.yaml` file in the `schema/` directory defines a generic schema for issue/task tracking systems. This schema is designed to be flexible enough to map to different issue/task tracking systems, such as Jira, Trello, and GitHub. 

The schema defines fields such as `title`, `description`, `type`, `priority`, `status`, `assignee`, `labels`, `comments`, `attachments`, `due_date`, `created_at`, and `updated_at`. These fields can be used to store information about an issue or task, such as its title, description, type (e.g. bug, feature, enhancement), priority (e.g. low, medium, high), status (e.g. open, in progress, resolved), assignee, labels, due date, and creation/update timestamps. 

The `comments` and `attachments` fields are arrays that can hold multiple comments and attachments, respectively. Each comment and attachment is an object with its own fields. This allows for flexibility in storing comment and attachment data across different systems.

The goal of this schema is to provide a common foundation for interfacing with issue/task tracking systems. By using a generic schema, we can write code that works with different systems without having to write system-specific code for each one.

### Wiki Schema

The `wiki.yaml` file in the `schema/` directory defines a generic schema for wiki pages. This schema is designed to be flexible enough to map to different wiki systems, such as Wikipedia, GitHub wiki, and Confluence. 

The schema defines fields such as `title`, `content`, `author`, `created_at`, `updated_at`, `change_history`, `comments`, and `attachments`. These fields can be used to store information about a wiki page, such as its title, content, author, creation/update timestamps, change history, comments, and attachments. 

The `change_history` and `comments` fields are arrays that can hold multiple change history entries and comments, respectively. Each change history entry and comment is an object with its own fields. This allows for flexibility in storing change history and comment data across different systems.

The goal of this schema is to provide a common foundation for interfacing with wiki systems. By using a generic schema, we can write code that works with different systems without having to write system-specific code for each one.

## Purpose

The purpose of using YAML schema definitions is to provide a common structure for data that can be used across different systems. By defining a standard schema for different types of content, we can write code that works with different systems without having to write system-specific code for each one. This makes it easier to integrate different systems and reduces the amount of code duplication that is needed for each integration.


## Master Payload Schema

The master payload schema is used to specify multiple requests to different subsystems in a single command. See the [schema definition file](./master-payload.yaml) for more details.
