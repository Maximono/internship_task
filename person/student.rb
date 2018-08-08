module Person
  class Student

    attr_accessor :university
    attr_reader :name, :knowledge

    def initialize(name)
      @name = name
    end

    def set_knowledge(knowledge)
      @knowledge = knowledge
    end

    def set_university(university)
      self.university = university
    end
  end
end
