Steps to reproduce:

``` sh
cd main_app
rm -rf deps _build; mix deps.get
mix compile
iex --sname tmp -S mix
```

Note: if you swap the last two steps you get a similar error
