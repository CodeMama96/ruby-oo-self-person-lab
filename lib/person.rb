class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8  #(0..10).to_a
        @happiness = 8
        

            #make sure class instance variables are labeled with the setter/getters

    end

    def hygiene=(index)
        if index > 10
            @hygiene = 10
        elsif index < 0
            @hygiene = 0
        else
            @hygiene = index
        end
    end 
    

    def happiness=(index)
        if index > 10 #if index is greater than 10, it's going to return 10
            @happiness = 10
        elsif index < 0 #if index is less than 0, it's going to return 0
            @happiness = 0
        else 
            @happiness = index 
        end
        
    end

    def happy?
        if self.happiness > 7
            true
        else 
            false
        end 
    end

    def clean?
        if self.hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(salary)
       self.bank_account += salary 
       "all about the benjamins"
    end



    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    def work_out
        self.hygiene -= 3
        self.happiness += 2
    "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        [friend, self].each {|x| x.happiness +=3}
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(amigo, topic)
        if topic == "politics"
            [amigo, self].each {|x| x.happiness -=2 }
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [amigo, self].each {|x| x.happiness += 1 }
            "blah blah sun blah rain"
        elsif topic != "politics" || "weather"
            "blah blah blah blah blah"
        end
    end
end


