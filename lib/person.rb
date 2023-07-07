# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account ,:happiness ,:hygiene 

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 10
    end

    def bank_account
        @bank_account 
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        @happiness = if value < 0 
            0
        elsif value > 10
            10
        else
            value
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(value)
        @hygiene = if value < 0 
            0
        elsif value > 10
            10
        else
            value
        end
    end

    def clean
        self.hygiene > 7
    end

    def happy
        self.happy > 7
    end

    def get_paid amount
        self.bank_account += amount
        puts "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        puts "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -=3
        puts "♪ another one bites the dust ♫"
    end

    def call_friend friend
        if friend.class == Person
            [self, friend].each {|person| person.happiness +=3}
            "Hi #{friend}! It's #{self.name}. How are you?"
        else
            "Not an instance of the class"
        end
    end

    def start_conversation friend, topic
        if topic == "politics"
            [self, happiness].each {|person| person.happiness -=2}
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, happiness].each {|person| person.happiness +=2}
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end

# person = Person.new("Alvin")
# person2 = Person.new("jale")


# puts person.bank_account
# puts person.bank_account=40
# puts person.bank_account
# puts person.happiness=10
# puts person.happiness
# puts person.clean

# person.get_paid(30)
# puts person.bank_account
# puts person2.bank_account

# person.take_bath
# puts person.hygiene

# person.work_out
# puts person.hygiene
# puts person.happiness

