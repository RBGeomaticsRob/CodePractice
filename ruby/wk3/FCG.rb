# Create any card game!

# Create a Card Game library of classes which could be used to create any number of basic card games. You'll need at least a Deck class and a Card class.

# Deck functionality

# A deck has a public attribute:

# cards: array of remaining cards in the deck.

# ...and three public methods:

# count(): count of remaining cards in the deck.

# shuffle(): randomize the order of the remaining cards in the deck.

# draw(n): remove the last n cards from the deck and return them in an array.

# Upon initialization, a deck is filled with 52 cards (13 from each of 4 suits).

# Card functionality

# A card has these public attributes:

# suit: a symbol representing the suit of the card.
# rank: an integer from 1 to 13. ("ace" is 1, "king" is 13)
# Javascript: face_card: is this card a face card? (> 10)
# ...and these methods:

# Ruby: face_card?: is this card a face card? (> 10)
# to_s (JS:toString()) : human-readable string representation of the card (e.g. "Ace of Spades", "10 of Clubs", "Queen of Hearts")
# Cards must be Comparable to other cards. Compare the ranks of the cards only.

# Since this is a low level layer to build card games above, all test input will be valid. All ranks will be between 1 and 13 and all suits will be one of

# Ruby: :hearts, :diamonds, :spades, :clubs


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