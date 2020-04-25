# frozen_string_literal: true

require 'test'

describe Test do
  describe '#breakPalindrome' do
    it 'replaces first char with a' do
      expect(subject.breakPalindrome('bab')).to eq 'aab'
    end
    it 'returns impossible if all same char' do
      expect(subject.breakPalindrome('aaa')).to eq 'IMPOSSIBLE'
    end
    it 'iterates over and replaces first char not a' do
      expect(subject.breakPalindrome('acca')).to eq 'aaca'
    end
  end

  describe '#maxDifference' do
    it 'returns diff of 1' do
      expect(subject.maxDifference([2, 3])).to eq 1
    end
    it 'returns diff of 3 w/ 3 items' do
      expect(subject.maxDifference([2, 3, 5])).to eq 3
    end
    it 'returns correct answer from full arr' do
      expect(subject.maxDifference([2, 3, 10, 2, 4, 8, 1])).to eq 8
    end

    it 'checking second full arr where digits go down after 1st 2' do
      expect(subject.maxDifference([7, 9, 5, 6, 3, 2])).to eq 2
    end
  end 
end
