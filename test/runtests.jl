using Assignment1
using TestItemRunner
using Test

@testitem "Collatz Length" begin
    using Assignment1
    @test collatz_length(13) == 10
    @test collatz_length(62221) == 87
    @test collatz_length(3590) == 70
    @test collatz_length(52233) == 172
    @test collatz_length(46828) == 146
    @test collatz_length(9505) == 123
    @test collatz_length(60218) == 154
end

@testitem "Max Collatz Length" begin
    using Assignment1
    @test longest_collatz_length(1000) == 871
    @test longest_collatz_length(10000) == 6171
    @test longest_collatz_length(6170) == 3711
    @test longest_collatz_length(1_000_000) == 837799
end

@testitem "Error on non-integer inputs (longest_collatz_length)" begin
    using Assignment1
    @test_throws MethodError longest_collatz_length(5.5f0)
    @test_throws MethodError longest_collatz_length(1e6)
    @test_throws MethodError longest_collatz_length("hello")
end

@testitem "Error on non-integer inputs (collatz_length)" begin
    using Assignment1
    @test_throws MethodError collatz_length(5.5f0)
    @test_throws MethodError collatz_length(1e6)
    @test_throws MethodError collatz_length("hello")
end

@run_package_tests