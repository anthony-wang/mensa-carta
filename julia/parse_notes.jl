println("Parsing notes")
fhandle = open("../datasets/uWaterloo/raw/notes/2017-w47-notes-pretty.json","r")

@time raw = JSON.parse(fhandle)
close(fhandle)
println("Parsing notes done")

outlets = raw["data"]["outlets"];

println("Print data")
indent = 2;
JSON.print(outlets,indent)
