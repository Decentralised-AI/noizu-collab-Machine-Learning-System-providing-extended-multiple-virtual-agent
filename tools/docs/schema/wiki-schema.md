# Wiki Schema

The `wiki.yaml` file in the `schema/` directory defines a generic schema for wiki pages. This schema is designed to be flexible enough to map to different wiki systems, such as Wikipedia, GitHub wiki, and Confluence. 

The schema defines fields such as `title`, `content`, `author`, `created_at`, `updated_at`, `change_history`, `comments`, and `attachments`. These fields can be used to store information about a wiki page, such as its title, content, author, creation/update timestamps, change history, comments, and attachments. 

The `change_history` and `comments` fields are arrays that can hold multiple change history entries and comments, respectively. Each change history entry and comment is an object with its own fields. This allows for flexibility in storing change history and comment data across different systems.

The goal of this schema is to provide a common foundation for interfacing with wiki systems. By using a generic schema, we can write code that works with different systems without having to write system-specific code for each one.

