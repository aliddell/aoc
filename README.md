# Advent of Code Solutions

My solutions to [Advent of Code](https://adventofcode.com/) puzzles in [Julia](https://julialang.org).

## Structure

- `src/AoC.jl` - Shared utilities across all years
- `YYYY/` - Solutions for each year
  - `solutions/dayXX.jl` - Solution scripts
  - `test/test_dayXX.jl` - Tests using example inputs
  - `inputs/` - Puzzle inputs (git-ignored)
  - `examples/` - Example inputs from problem descriptions (git-ignored)

## Setup

1. Install Julia (1.6+)
2. Clone this repo
3. Create a `.env` file in the root with your AoC session cookie:
```
   AOC_SESSION=your_session_cookie_here
```
4. Activate and instantiate:
```julia
   ] activate .
   ] instantiate
```

## Running Solutions

From a year directory (e.g., `2022/`):
```julia
] activate .
julia solutions/day01.jl
```

## Testing
```julia
] activate .  # From year directory
] test
```

## Fetching Inputs
```julia
using AoC
AoC.save_input(2022, 1, "2022/inputs")
```

## Getting Your Session Cookie

1. Log into adventofcode.com
2. Open browser DevTools (F12)
3. Go to Application/Storage → Cookies → https://adventofcode.com
4. Copy the value of the `session` cookie