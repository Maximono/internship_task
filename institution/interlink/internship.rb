module Institution
  module Interlink
    class Internship

      attr_reader :name, :students

      def initialize(name)
        @name = name
        @students = []
      end

      def set_student(student)
        return unless student.is_a?(Person::Student)
        @students << student if student.knowledge.level > student.university.average_knowledge_level
      end

      def get_students()
        students.map(&:name).join("\n") + "\n"
      end
    end
  end
end
