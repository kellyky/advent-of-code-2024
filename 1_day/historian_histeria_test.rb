require 'minitest/autorun'
require_relative 'historian_histeria'

class HistorianHisteriaTest< Minitest::Test
  # Part 1
  def test_sample
    file = 'sample-input.txt'
    historian_search = HistorianHisteria.new(file)
    assert_equal 11, historian_search.total_distance
  end

  def test_real_input
    file = 'input.txt'
    historian_search = HistorianHisteria.new(file)
    assert_equal 1110981, historian_search.total_distance
  end
end

