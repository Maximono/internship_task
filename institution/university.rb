module Institution
  class University

    attr_reader :name, :students

    def initialize(name)
      @name = name
      @students = []
    end

    def set_student_knowledge(student)
      # TODO: Implementation is needed
    end

    def add_student(student)
      return unless student.is_a?(Person::Student)
      @students << (student)
    end
  end
end
