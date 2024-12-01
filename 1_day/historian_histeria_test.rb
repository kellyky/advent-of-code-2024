require 'minitest/autorun'
require_relative 'historian_histeria'

class HistorianHisteriaTest< Minitest::Test
  # Part 1
  def test_total_distance_sample
    file = 'sample-input.txt'
    historian_search = HistorianHisteria.new(file)
    assert_equal 11, historian_search.total_distance
  end

  def test_total_distance_real_input
    file = 'input.txt'
    historian_search = HistorianHisteria.new(file)
    assert_equal 1110981, historian_search.total_distance
  end

  # Part2
  def test_similarity_score_sample
    file = 'sample-input.txt'
    historian_search = HistorianHisteria.new(file)
    assert_equal 31, historian_search.similarity_score
  end

  def test_similarity_score_real_input
    file = 'input.txt'
    historian_search = HistorianHisteria.new(file)
    assert_equal 24869388, historian_search.similarity_score
  end
end

