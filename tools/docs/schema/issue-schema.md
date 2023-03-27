# Issue Schema

The `issue.yaml` file in the `schema/` directory defines a generic schema for issue/task tracking systems. This schema is designed to be flexible enough to map to different issue/task tracking systems, such as Jira, Trello, and GitHub. 

The schema defines fields such as `title`, `description`, `type`, `priority`, `status`, `assignee`, `labels`, `comments`, `attachments`, `due_date`, `created_at`, and `updated_at`. These fields can be used to store information about an issue or task, such as its title, description, type (e.g. bug, feature, enhancement), priority (e.g. low, medium, high), status (e.g. open, in progress, resolved), assignee, labels, due date, and creation/update timestamps. 

The `comments` and `attachments` fields are arrays that can hold multiple comments and attachments, respectively. Each comment and attachment is an object with its own fields. This allows for flexibility in storing comment and attachment data across different systems.

The goal of this schema is to provide a common foundation for interfacing with issue/task tracking systems. By using a generic schema, we can write code that works with different systems without having to write system-specific code for each one.

