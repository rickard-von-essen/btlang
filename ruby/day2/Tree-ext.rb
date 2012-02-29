  # Extend Tree class to allow initialization via
  # {'grandpa' => { 'dad' => { 'child1' => {}, 'child2' => {}}, 'uncle' => { 'child3' => {}, 'child4' => {}}}}

require './Tree'

class Tree

  def initialize(treeHash={'unknown' => {}})
    @node_name = treeHash.keys[0]
    @children = treeHash[@node_name].map{ |p| Tree.new({p[0] => p[1]})}
  end

end
