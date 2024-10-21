# Install with dev Oscar

## Activate environment
From root of project do 

```
julia> ]activate .

julia> ]instantiate

julia>]dev Oscar 

# or 

julia>]dev /path/to/local/Oscar
```

## Running Script

First set the `dir_url` in main.jl then run

```
julia> include(main.jl)
```

