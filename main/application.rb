require_relative '../institution/interlink/internship'
require_relative '../institution/university'
require_relative '../person/student'
require_relative '../person/consciousness/knowledge'

class Application

  def main
    university = Institution::University.new('CH.U.I')
    university.add_student(Person::Student.new('Andrew Kostenko'))
    university.add_student(Person::Student.new('Julia Veselkina'))
    university.add_student(Person::Student.new('Maria Perechrest'))

    internship = Institution::Interlink::Internship.new('Interlink')
    puts("List of internship's students:")
    puts(internship.get_students)
  end
end
