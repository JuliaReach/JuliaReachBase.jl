using Documenter, JuliaReachBase

makedocs(
    sitename = "JuliaReachBase.jl",
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true",
                             assets = ["assets/aligned.css"]),
    modules = [JuliaReachBase, Assertions, Require, Comparison, Iteration,
               Commutative, Distribution, Subtypes, Arrays],
    pages = [
        "Home" => "index.md",
        "Library" => Any[
            "Assertions" => "lib/Assertions.md",
            "Require" => "lib/Require.md",
            "Comparison" => "lib/Comparison.md",
            "Iteration" => "lib/Iteration.md",
            "Commutative" => "lib/Commutative.md",
            "Distribution" => "lib/Distribution.md",
            "Subtypes" => "lib/Subtypes.md",
            "Arrays" => "lib/Arrays.md",
        ],
        "About" => "about.md"
    ],
    doctest = true,
    strict = true
)

deploydocs(
    repo = "github.com/JuliaReach/JuliaReachBase.jl.git"
)
