
class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.high_card(card_one, card_two)
    return card_one if card_one.rank > card_two.rank
      
    card_two
  end

end

class Deck
  def initialize
    @cards = []
    @ranks = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace]
    @suits = %w[diamonds spades clubs hearts]
      @ranks.each do |rank|
        @suits.each do |suit|
          @cards << Card.new(rank, suit)
        end
      end

  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def random_card
    @cards.sample
  end

  def shuffle
    @cards.shuffle!
    
  end

  def deal
    @cards.shift
  end

end

deck = Deck.new
deck.shuffle
#deck.shift
deck.output

#deck.random_card.output_card
#Card.high_card(deck.random_card, deck.random_card).output_card


  
  