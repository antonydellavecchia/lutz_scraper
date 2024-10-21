# Install with dev Oscar

## Activate environment
```
julia> import Pkg; Pkg.activate("/home/antonydv/projects/lutz_scraper/")
  Activating project at `~/projects/lutz_scraper`

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

