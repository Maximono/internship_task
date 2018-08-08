require 'spec_helper'

RSpec.describe Institution::University do

  let(:university) { described_class.new('Hogwarts') }
  let(:student) { Person::Student.new('Harry Potter') }

  describe '#name' do
    it 'should return University name' do
      expect(university.name).to eq('Hogwarts')
    end
  end

  describe '#add_student' do

    before { university.add_student(student) }

    it 'should add student to University' do
      expect(university.students).to include(student)
    end

    it 'should return University the student is in' do
      expect(student.university).to eq(university)
    end
  end

  describe '#set_student_knowledge' do
    it 'should set student knowledge level' do
      university.add_student(student)
      university.set_student_knowledge(student)
      expect(student.knowledge.level).to be_instance_of(Integer)
    end
  end

  describe '#average_knowledge_level' do
    it 'should return average knowledge level' do
      second_student = Person::Student.new('Peter Pan')
      university.add_student(student)
      university.add_student(second_student)
      expect(university.average_knowledge_level).to be_instance_of(Integer)
    end
  end
end
