# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end

    attr_reader :name
    attr_accessor :bank_account    
    attr_reader :happiness
    attr_reader :hygiene

    def happiness= (happy)
       if happy >= 10
        @happiness = 10
       elsif happy <= 0
        @happiness = 0
       else 
        @happiness = happy
       end
    end

    def hygiene= (hygiene) 
        if hygiene >= 10
            @hygiene = 10
        elsif hygiene <= 0
            @hygiene = 0
        else
            @hygiene =hygiene
        end
    end

    def happy?
        return @happiness > 7
    end

    def clean?
        return @hygiene > 7
    end

    def get_paid (salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene - 3)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness=(@happiness + 3)
        person.happiness=(person.happiness + 3)
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        case topic
        when "politics" 
            self.happiness=(self.happiness - 2) 
            person.happiness = (person.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        when "weather"
            self.happiness=(self.happiness + 1)
            person.happiness=(person.happiness + 1)
            return "blah blah sun blah rain"
        else  
            return 'blah blah blah blah blah'
        end
    end
end