require 'minitest/autorun'
require_relative 'mull_it_over'

describe MullItOver do

  describe 'Part 1 with sample data' do
    before { @mulling = MullItOver.new(file) }

    let(:file) { 'sample-input.txt' }

    it 'returns 161' do
      assert_equal 161, @mulling.sum_mullings
    end
  end

  describe 'Part 1 with sample data' do
    before { @mulling = MullItOver.new(file) }

    let(:file) { '../input.txt' }

    it 'returns 175700056' do
      assert_equal 175700056, @mulling.sum_mullings
    end
  end

end
