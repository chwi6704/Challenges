class Card
  def initialize(text)
    @text = text
  end
end

class List
  def initialize(title)
    @title = title
    @cards = []
  end
  def addCard(text)
    card = Card.new(text)
    @cards.push(card)
  end

end

list = List.new('My first list')
list.addCard('My first card')

puts list

card = Card.new('Hello world')
puts card