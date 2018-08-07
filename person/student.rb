module Person
  class Student

    attr_reader :name, :knowledge

    def initialize(name)
      @name = name
    end

    def set_knowledge(knowledge)
      @knowledge = knowledge
    end
  end
end
