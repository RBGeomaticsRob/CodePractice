include Comparable

class Card
  attr_reader :rank, :suit

  def initialize(suit,rank)
    @suit = suit
    @rank = rank
  end

  def face_card?
    rank > 10
  end

  def to_s
    case @rank
      when 1
        "Ace of #{@suit.capitalize}"
      when 2..10
        "#{@rank} of #{@suit.capitalize}"
      when 11
        "Jack of #{@suit.capitalize}"
      when 12
        "Queen of #{@suit.capitalize}"
      when 13
        "King of #{@suit.capitalize}"
    end
  end

  def <=>(other_card)
    if rank < other_card.rank
      -1
    elsif rank > other_card.rank
      1
    else
      0
    end
  end

end


class Deck
attr_reader :cards
  def initialize
    @cards =[]
    load_deck
  end

  def load_deck
    faces = 1..13
    suits = [:spades, :hearts, :diamonds, :clubs]
    suits.map do |suit|
      faces.map {|face_value| @cards.push(Card.new(face_value, suit))}
    end
  end

  def shuffle
    cards.sort_by! {rand}
    self
  end

  def draw(n = 1)
    take_cards = []
    n.times {take_cards.push(cards.pop)}
    take_cards
  end

  def count
    @cards.length
  end

end

deck = Deck.new
p deck
puts "New Line"
p deck.shuffle.draw(3)

