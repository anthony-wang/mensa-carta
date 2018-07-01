println("Loading deps")

using JSON
using DataFrames
# represent the data more efficiently by replacing the strings with indices into a small pool of identical levels
using CategoricalArrays, Missings
using Query
using Plots
