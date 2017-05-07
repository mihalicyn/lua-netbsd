-- add verbose syntax error output
systm = require 'systm'
--math = require 'math'

systm.print("hello!")
--systm.print(math.sin(1))



local fout = io.open("out.txt", 'w+')

fout:write("Hello, from kernel World!")

fout:close()
