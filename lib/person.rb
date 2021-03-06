# your code goes here
class Person

  attr_accessor :bank_account #, :happiness, :hygiene

  def happiness= (happiness)
    @happiness = happiness
    if @happiness > 10
      @happiness = 10
    end

    if @happiness < 0
      @happiness = 0
    end

  end

  def hygiene= (hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    end

    if @hygiene < 0
      @hygiene = 0
    end
  end

  attr_reader :name, :happiness, :hygiene



  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    # if @hygiene > 10
    #   @hygiene = 10
    # end
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness+= 2
    self.hygiene -= 3
    # if @hygiene < 0
    #   @hygiene = 0
    # end
    # if @happiness > 10
    #   @happiness = 10
    # end
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    # if self.happiness > 10
    #   self.happiness = 10
    # end
    # if friend.happiness > 10
    #   friend.happiness = 10
    # end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      # if self.happiness > 10
      #   self.happiness = 10
      # end
      # if person.happiness > 10
      #   person.happiness = 10
      # end
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      # if self.happiness > 10
      #   self.happiness = 10
      # end
      # if person.happiness > 10
      #   person.happiness = 10
      # end
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
