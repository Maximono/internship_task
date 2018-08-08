require 'spec_helper'

RSpec.describe Institution::Interlink::Internship do
  let(:internship) { described_class.new('Hogwarts') }

  describe '#name' do
    it 'should return Internship name' do
      expect(internship.name).to eq('Hogwarts')
    end
  end

  describe '#set_student' do
    let(:student_1) { Person::Student.new('Ace Ventura') }
    let(:student_2) { Person::Student.new('Darth Vader') }


    before do
      student_1.set_knowledge(Person::Consciousness::Knowledge.new(4))
      student_2.set_knowledge(Person::Consciousness::Knowledge.new(6))

      university = Institution::University.new('Hogwarts')
      allow(university).to receive(:set_student_knowledge)

      university.add_student(student_1)
      university.add_student(student_2)
    end

    it 'should add student according to knowledge level' do
      internship.set_student(student_1)
      internship.set_student(student_2)

      expect(internship.students).not_to include(student_1)
      expect(internship.students).to include(student_2)
    end
  end
end
