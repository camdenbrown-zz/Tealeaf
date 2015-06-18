h = {a:1, b:2, c:3, d:4}
p h[:b]
p h.merge(e: 5)

p h.delete_if {|k,v| v < 3.5}