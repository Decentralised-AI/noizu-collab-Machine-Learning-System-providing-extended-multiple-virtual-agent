
Noizu Collab
===============================

Distributed GPT
Distributed GPT is a multi-modal tool designed for collaboration in a virtual environment. It extends Personas/GPT models with simulated history, memory, and agendas, utilizing various OpenAI and HuggingFace APIs, as well as other external tools.

This project is built using:

- Elixir
- Phoenix LiveView (1.6 - to allow chatgpt support of generated code)
- Redis
- TimeScaleDB
- Various OpenAI and HuggingFace APIs
- Various other APIs

# Planned Features

- Individual agents/personas with separate GPT context for working memory
- Private information and conversations between agents
- Simulated memory and context for growth and differentiation of agents over time
- Integration of external tools for expanded agent capabilities
- A coordinating system for message passing and moderation


# Project Layout
.
├── README.md
├── assets
│   ├── css
│   ├── js
│   └── vendor
├── config
│   ├── config.exs
│   ├── dev.exs
│   ├── prod.exs
│   ├── runtime.exs
│   └── test.exs
├── lib
│   ├── noizu_collab
│   ├── noizu_collab.ex
│   ├── noizu_collab_web
│   └── noizu_collab_web.ex
├── list-issues.sh
├── mix.exs
├── priv
│   ├── gettext
│   ├── repo
│   └── static
├── test
│   ├── noizu_collab_web
│   ├── support
│   └── test_helper.exs
└── tools # Special interop tools for GPT models to interact with jira/github etc.

 



## Phoenix Notes

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

### Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
