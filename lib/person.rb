# your code goes here
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor  :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value
        # if happiness is greater than 10
        @happiness = 10 unless @happiness < 10
        # if happiness is less than zero
        @happiness = 0 unless @happiness > 0
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
        # if hygiene is greater than 10
        @hygiene = 10 unless @hygiene < 10
        # if hygiene is less than zero
        @hygiene = 0 unless @hygiene > 0
    end
    def clean?
        @hygiene > 7
    end
    def happy?
        @happiness > 7
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = @hygiene + 4
        hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness = @happiness += 2
        self.hygiene = @hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end

blake = Person.new('Blake')

blake.happiness=55
puts blake.happiness
puts blake.hygiene
# blake.hygiene=20
puts blake.hygiene

puts blake.clean?

p fred = Person.new("fred")
# fred.start_conversation(felix, 'politics')
# p fred.start_conversation(felix, 'politics')


