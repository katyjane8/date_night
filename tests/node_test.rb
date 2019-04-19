require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < Minitest::Test
  def test_it_has_a_rating
    node = Node.new(2, "Full Metal Jacket")
    assert_equal 2, node.rating
  end

  def test_it_had_a_title
    node = Node.new(2, "Full Metal Jacket")
    assert_equal "Full Metal Jacket", node.movie_title
  end

  def test_links_are_false_by_default
    node = Node.new(2, "Full Metal Jacket")
    assert_nil node.left
    assert_nil node.right
  end
end
