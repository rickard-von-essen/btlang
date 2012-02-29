  # Hashes, Arrays and Trees check them up.
  # - Array
[12, 32, 443, 14, 5].each {|x| puts x}
  # - Hash
h = {"a"=>12, "b"=> 33, "c"=> 677}
puts h['a'] 

  # - Tree
require "./Tree"
t = Tree.new('grandpa', [Tree.new('dad', [Tree.new('child1'), Tree.new('child2')] ), 
	Tree.new('uncle', [Tree.new('child3'), Tree.new('child4')]) ])
puts "== Tree =="
t.visit_all {|n| puts n.node_name}

puts "== Tree-ext =="
require "./Tree-ext"
  t = Tree.new({'Grandpa' => {'Dad' => {'Child1' => {}, 'Child2' => {}}, 'Uncle' => {'Child3' => {}, 'Child4' => {}}}})
t.visit_all {|n| puts n.node_name}

require "./Tree-ext_test"
  # Do:
  # - Print the content of an array with 16 elements, four at a time using "each". 
## BORKEN ##
#(1..16).each {|x| print x}
  # - Do it again with "each_slice"
(1..16).each_slice(4) {|x| p x} 
