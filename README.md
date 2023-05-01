# Performance (part 2)

[![Build Status](https://github.com/AdvancedScientificComputingInJuliaWashU/Performance2.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/AdvancedScientificComputingInJuliaWashU/Performance2.jl/actions/workflows/CI.yml?query=branch%3Amain)

This assignment helps you explore concepts from the analysis of algorithms, specifically the "big-O" notation and its use in evaluating implementations.

Steps:

1. Fill out the (minimal) starter code in `src/`. Make sure the (minimal) tests pass on your implementations.
- [x] Done!

2. Answer the following question: why do the tests for `unique_set` use `sort`, but the test for `unique_2loops` do not? If you get stuck, see `?Set`.
- [x] The choice of using **sort** in the test for **unique_set** is due to the fact that **Set** does not preserve order, whereas **unique_2loops** preserves order by construction.

3. Create the benchmarks in `benchmarks/run_benchmarks.jl`. The end result should be a few global variables that store information about the sizes of the lists and the runtime needed to execute the algorithm(s).
- [x] Done!

4. Pick a plotting package (your choice): popular options include [Makie](https://github.com/MakieOrg/Makie.jl), [Plots](https://github.com/JuliaPlots/Plots.jl), and [PyPlot](https://github.com/JuliaPy/PyPlot.jl). Makie is not recommended for this assignment unless you're running at least Julia 1.9. (Makie is the most sophisticated and a good investment for anyone considering Julia for the long term, but it currently has long load and precompilation times; Plots or PyPlot are leaner options. Any of these should be more than sufficient for this assignment.)
- [x] Done!

5. Plot your results, filling out a plotting script in `plot_benchmarks.jl`.
- [x] Done!

6. In big-O notation, what order is `unique_2loops` when there are only 10 unique items? What is its order when the number of unique items is half the length of the list? For the same two cases, what order is `unique_set`?
- [x] When there are only 10 unique items, `unique_2loops` is O(n^2) and `unique_set` is O(n log n). When the number of unique items is half the length of the list `unique_2loops` is O(n^2) and `unique_set` is O(n).

7. To get a glimpse of how `Set`s work, fill out the exercise in `examples/hashtable.jl`. Then fill out the number of "hash collisions" (slots in the table that got more than one item inserted in them) for tables of the following sizes:
- [x]
    - 16: 14
    - 32: 11
    - 64: 8
    - 128: 4
