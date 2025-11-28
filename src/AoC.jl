module AoC

using HTTP
using DotEnv

const DOTENV = Ref{Union{Nothing, DotEnv.EnvOverlay}}(nothing)

function get_session_cookie()
    if isnothing(DOTENV[])
        DOTENV[] = DotEnv.config()
    end
    return DOTENV[]["AOC_SESSION"]
end

function fetch_input(year::Int, day::Int)
    session_cookie = get_session_cookie()
    url = "https://adventofcode.com/$year/day/$day/input"
    headers = ["Cookie" => "session=$session_cookie"]
    
    response = HTTP.get(url, headers)
    return String(response.body)
end

function save_input(year::Int, day::Int, input_dir::String)
    input = fetch_input(year, day)
    mkpath(input_dir)
    filename = joinpath(input_dir, "day$(lpad(day, 2, '0')).txt")
    write(filename, input)
    @info "Saved input to $filename"
end

end # module