require 'minitest/autorun'
require 'minitest/pride'
require_relative './lib/node'

class NodeTest < MiniTest::Test

  def test_has_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_has_nextnode
    node = Node.new("plop")
    assert_equal nil, node.next_node

  end


end
