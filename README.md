# Issues

Gets github issues and turns them into a formatted table in the terminal.

Requires erlang to run `./issues` file (all you need to fetch the issues) and erlang + elixir for the rest.

To run `./issues <name> <user> <lines>`

By default you get 4 if you just run `./issues <name> <user>`

Examples:

```
 ./issues elixir-lang elixir 4



numb | created_at           | title
-----+----------------------+----------------------------------------------------------------------------------------
8678 | 2019-01-22T19:41:58Z | `mix test` should error and not ignore files when using multiple files and line numbers
8682 | 2019-01-23T12:21:09Z | Raise error when attempting to run single line tests on multiple files
8687 | 2019-01-24T09:03:44Z | Fix rounding for subnormal floats, closes #8685
8689 | 2019-01-24T14:04:36Z | .beam files differ between builds

```

```

./issues phoenixframework phoenix 3


numb | created_at           | title
-----+----------------------+--------------------------------------------------
3241 | 2019-01-12T11:04:39Z | Update heroku.md
3244 | 2019-01-16T10:52:14Z | Update deployment.md
3250 | 2019-01-18T22:03:47Z | Show socket paths on mix phx.routes. Closes #3237
```

## Installation

`mix deps.get`

Generate docs with `mix docs` and open `doc/index.html`
