"""
collatz_length(n)

Computes the collatz sequence length starting at the integer `n`.

See [Project Euler Problem 14](https://projecteuler.net/problem=14) for more details.

# Examples
```julia-repl
julia> collatz_length(13)
10
```
"""
function collatz_length(n::Int)
    long_serie = 1
    while n != 1
        if n % 2 == 0 # número par
            n = n ÷ 2 # \div [tab] división entera devuelve Int
        else # número impar
            n = 3n + 1
        end
        long_serie += 1
    end
    return long_serie
end

"""
longest_collatz_length(max_n)

Finds the starting integer `n` which has the longest Collatz length from `n=1` to `n=max_n`.

Returns `n`.

See [Project Euler Problem 14](https://projecteuler.net/problem=14) for more details.

# Examples
```julia-repl
julia> longest_collatz_length(10)

```
"""
function longest_collatz_length(max_n)
    # TODO: Implementation should go here!
    return nothing
end