require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require 'pry'

class LinkedListTest < MiniTest::Test

  def test_if_it_has_a_head
    skip
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_can_append_1_node_to_linked_list
    list = LinkedList.new
    list.append(2)
    assert_equal 2, list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_can_append_2_nodes_to_linked_list
    list = LinkedList.new
    list.append(2)
    list.append(3)

    assert_equal 2, list.head.data
    assert_equal 3, list.head.next_node.data
    assert_equal nil, list.head.next_node.next_node
  end

  def test_count_counts
    list = LinkedList.new
    list.append("bleep")
    list.append("pleep")
    list.append("sleep")

    assert_equal 3, list.count
  end

  def test_we_can_prepend_a_node
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("bop")

    assert_equal "bop", list.head.data
    assert_equal "doop", list.head.next_node.data
  end

  def test_it_can_prepend_another_node
    list = LinkedList.new
    list.append("pop")
    list.append("slop")
    list.prepend("beebop")

    assert_equal "beebop", list.head.data
    assert_equal "slop", list.head.next_node.next_node.data
  end

  #JUHN
  # def test_it_can_find_the_tail_with_a_bunch_of_nodes
  #   list = LinkedList.new(nil)
  #   list.append("beep")
  #   list.append("bop")
  #   list.append("pop")
  #   list.append("beap")
  #
  #   assert_equal 'beap', list.tail.data
  #   assert_equal nil, list.tail.next_node
  # end

  # def test_append_adds_data
  #   list = LinkedList.new(nil)
  #   list.append("doop")
  #   assert_equal "doop", list.tail.data
  #   assert_equal nil, list.tail.next_node
  # end

  # def test_if_it_can_insert
  #   list = LinkedList.new
  #   list.append('pop')
  #   list.append('bop')
  #   list.append('boop')
  #   list.insert(1,"poop")
  #
  #   assert_equal "poop", list
  # end

end
