require 'minitest/autorun'
require_relative 'mull_it_over'

describe MullItOver do

  describe 'Part 2 with sample data' do
    before { @mulling = MullItOver.new(file) }

    let(:file) { 'sample-input-part-2.txt' }

    it 'returns 48' do
      assert_equal 48, @mulling.sum_mullings
    end
  end

  describe 'Part 2 with sample data' do
    before { @mulling = MullItOver.new(file) }

    let(:file) { '../input.txt' }

    it 'returns 71668682' do
      assert_equal 71668682, @mulling.sum_mullings
    end
  end

end
