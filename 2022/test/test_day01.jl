include("../solutions/day01.jl")
using .Day01

@testset "Day 1" begin
    example_input = open("../examples/day01.txt") do io
        read(io, String)
    end
    @test Day01.part1(example_input) == 24000
end