Steps to reproduce:

``` sh
cd main_app
rm -rf deps _build; mix deps.get
mix compile
iex --sname tmp -S mix
```

Note: if you swap the last two steps you get a similar error

Error:

```
$ iex --sname tmp -S mix
Erlang/OTP 23 [erts-11.1.2] [source] [64-bit] [smp:12:12] [ds:12:12:10] [async-threads:1] [hipe]

==> sub_app
could not compile dependency :sub_app, "mix compile" failed. You can recompile this dependency with "mix deps.compile sub_app", update it with "mix deps.update sub_app" or clean it with "mix deps.clean sub_app"
** (ArgumentError) argument error
    :erlang.is_process_alive(#PID<3.278.0>)
    (elixir 1.11.2) lib/code.ex:700: Code.eval_quoted/3
    (boundary 0.7.0) lib/boundary/definition.ex:96: anonymous fn/2 in Boundary.Definition.decode/1
    (elixir 1.11.2) lib/map.ex:818: Map.update!/3
    (boundary 0.7.0) lib/boundary/definition.ex:45: Boundary.Definition.get/1
    (boundary 0.7.0) lib/boundary/view.ex:94: anonymous fn/4 in Boundary.View.load_app_boundaries/3
```

