println("Parsing menus")
fhandle = open("../datasets/uWaterloo/raw/menu/2017-w40-menu.json","r")

# since the json file is all one line, the following can't be used
# from https://stackoverflow.com/questions/34473501/read-and-parse-a-400mb-json-file-in-julia-without-crashing-kernel
# discard_lines = 2      # lines up to repetitive part
# important_chunks = 1000 # number of data items
# chunk_length = 2        # each data item has a 2-line JSON chunk
#
# for i=1:discard_lines
#     l = readline(fhandle)
# end
# for i=1:important_chunks
#     chunk = join([readline(fhandle) for j=1:chunk_length])
#     push!(allData,JSON.parse(chunk))
# end
# close(fhandle)

@time raw = JSON.parse(fhandle)
close(fhandle)
println("Parsing menus done")

outlets = raw["data"]["outlets"];

println("Print data")
indent = 2;
JSON.print(outlets,indent)
# JSON.print(data[2]["outlets"],2)
JSON.print(outlets[1]["menu"],indent)
