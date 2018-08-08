require 'spec_helper'

RSpec.describe Person::Student do

  let(:student) { described_class.new('Garfield') }

  describe '#name' do
    it 'should return Student name' do
      expect(student.name).to eq('Garfield')
    end
  end

  describe '#knowledge' do
    it 'should set and return Student knowledge' do
      knowledge = Person::Consciousness::Knowledge.new(2)
      student.set_knowledge(knowledge)
      expect(student.knowledge).to eq(knowledge)
    end
  end
end
