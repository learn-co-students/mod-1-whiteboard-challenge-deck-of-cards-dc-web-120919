require 'pry'
class Deck
    attr_reader :cards

    def initialize
        suits = ["Hearts", "Diamond", "Clubs", "Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @cards = []
        suits.each do |s|
            ranks.each do |r|
                @cards << Card.new(s, r)
            end
        end
        
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end

end

class Card
    attr_reader :rank, :suit
  
    def initialize(suit, rank)
      @rank = rank
      @suit = suit
    end
end
