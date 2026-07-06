#Pkg.add("GLMakie")
#Pkg.add("CSV")
#Pkg.add("DataFrames")

using CSV
using DataFrames
using GLMakie

include("layout.jl")
include("functions.jl")
export  plot!; getProperty
