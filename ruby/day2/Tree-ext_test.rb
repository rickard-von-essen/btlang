require "test/unit"
require "./Tree-ext"

class TreeExtTest < Test::Unit::TestCase

  def test_empty
    t = Tree.new()
    assert_equal("unknown", t.node_name)
    assert_equal([], t.children)
  end
  
  def test_single
    t = Tree.new({'one' => {}})
    assert_equal("one", t.node_name)
    assert_equal([], t.children)
  end
  
  def test_parent
    t = Tree.new({'one' => {'two' => {}}})
    assert_equal("one", t.node_name)
    assert_not_nil(t.children)
  
    assert_equal("two", t.children[0].node_name)
    assert_equal([], t.children[0].children)
  end
end
