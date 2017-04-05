require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/pride'
require './lib/doubly_linked_circular_list'

class TestDoublyLinkedCircularList < Minitest::Test

  def test_it_exists
    list = DoublyLinkedCircularList.new
    assert list
    assert_instance_of DoublyLinkedCircularList, list
  end

  def test_
end


# Theory

# In a Doubly Linked Circular List:

# The head links either to nil or to a node
# Each node has an element of data
# Each node has a forward link that is a reference to the next node
# Each node has a back link that is a reference to the previous node
# The "last" node in the list has a forward link that points to the first node in the list
# The "first" node in the list has a back link that points to the last element in the list
# Challenge

# Build an implementation of a Doubly Linked Circular List that:

# can insert a new piece of data
# can output a non-ring representation of the list nodes by calling inspect
# can count the number of elements in the list
# can tell you whether the list does or does not include? a value
# can pull an element from the list which removes it from the ring and connects its back to its forward
# Tips

# First, build a normal Linked List
# Second, build a Doubly Linked List
# Third, hook your tail to your head for a Circular List
# Make sure to use TDD to avoid regressions along the way
