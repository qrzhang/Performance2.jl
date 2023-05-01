# Write a plotting script to display the results from `run_benchmarks.jl`.
# The length of the input list should be on the x-axis, and the y-axis should show the runtime.
# You can use linear or log-log scales.

using Plots
include("run_benchmarks.jl")

# Plot the results
plot(
    list_sizes, time_set10,
    xaxis=:log10, yaxis=:log10,
    label="unique_set (10 distinct items)",
    xlabel="List size",
    ylabel="Time (seconds)"
)

plot!(
    list_sizes, time_sethalf,
    label="unique_set (half distinct items)"
)

plot!(
    list_sizes, time_2loops10,
    label="unique_2loops (10 distinct items)"
)

plot!(
    list_sizes, time_2loopshalf,
    label="unique_2loops (half distinct items)"
)