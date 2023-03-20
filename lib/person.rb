# your code goes here

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account= 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(updated)
        if updated < 0
            @happiness = 0
        elsif updated > 10
            @happiness = 10
        else 
            @happiness = updated
        end

    end

    def hygiene=(updated_hygiene)
        if updated_hygiene < 0
            @hygiene = 0
        elsif updated_hygiene > 10
            @hygiene = 10
        else
            @hygiene = updated_hygiene
        end
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(money)
        self.bank_account += money
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(caller)
        self.happiness += 3  
        caller.happiness += 3   
        "Hi #{caller.name}! It's #{self.name}. How are you?"   
    end

    def start_conversation(caller, conversation)
        if conversation == "politics"
            caller.happiness -= 2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif conversation == 'weather'
            caller.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else
            "blah blah blah blah blah"
        end
    end

    

    
end
