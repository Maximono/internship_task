require 'spec_helper'

RSpec.describe Person::Consciousness::Knowledge do
  describe '#level' do
    it 'should return Knowledge level' do
      knowledge = described_class.new(5)
      expect(knowledge.level).to eq(5)
    end
  end
end
