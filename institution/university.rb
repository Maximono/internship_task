module Institution
  class University

    attr_reader :name, :students

    def initialize(name)
      @name = name
      @students = []
    end

    def set_student_knowledge(student)
      knowledge = Person::Consciousness::Knowledge.new(rand(1..10))
      student.set_knowledge(knowledge)
    end

    def add_student(student)
      return unless student.is_a?(Person::Student)
      student.set_university(self)
      @students << (student)
    end
  end
end
