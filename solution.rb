class Deck  
    attr_reader :cards
    def initialize
        @cards = []
       suits = ["diamonds","hearts","spade","clubs"]
    ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    suits.each do |suit|
       ranks.each do |rank|
            @cards << Card.new(suit,rank)
        end
    end 
    end
    def choose_card
        @cards.delete_at(rand(@cards.length))
    end


end

class Card
    
    attr_reader :suit, :rank 
   
    def initialize(suit,rank)
        @suit = suit
        @rank = rank
       
       
    end
   

     
end
