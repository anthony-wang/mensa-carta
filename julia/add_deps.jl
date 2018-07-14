println("Adding packages for deps")

# Pkg.add("JSON")
# Pkg.add("CategoricalArrays")
# Pkg.add("Missings")
# Pkg.add("Query")

Pkg.add.(["JSON", "CategoricalArrays", "Missings", "Query"])
