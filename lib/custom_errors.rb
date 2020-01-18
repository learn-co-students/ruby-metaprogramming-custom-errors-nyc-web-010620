class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person

    unless person.class == Person
      begin
        raise NoMethodError
      rescue => exception
        puts "Needs to be an Instance to assign a partner to"
      end
    else
      person.partner = self
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




