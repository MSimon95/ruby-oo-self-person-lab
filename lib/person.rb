
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name_par, bank_account = 25)
        @name = name_par
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
    end

    def happiness
        if @happiness < 0 
            @happiness = 0
        elsif @happiness > 10
            @happiness = 10
        else
            @happiness
        end
    end

    def hygiene
        if  @hygiene < 0 
            @hygiene = 0
        elsif @hygiene > 10
            @hygiene = 10
        else
            @hygiene
        end
    end

   
    # 4. The `work_out` method should increment the person's happiness by two points, decrease their hygiene by three points, and return the Queen lyrics, "♪ another one bites the dust ♫".
    
    # 5. The `call_friend` method should accept another instance of the Person class, or "friend". The method should increment the caller and the callee's happiness points by three. If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
    
    # 6. Finally, the `start_conversation` method should accept two arguments, the person to start a conversation with and the topic of conversation.
    
    #   - If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
    #   - If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
    #   - If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
    
    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid (salary)
        @bank_account += salary
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend (person)
        self.happiness += 3
        person.happiness += 3
       "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend, topic)
        # binding.pry
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

# binding.pry
# 0