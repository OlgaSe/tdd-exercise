# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  face_cards = ['Jack', 'Queen', 'King']
  score = 0
  aces = 0
  hand.each do |card|
    if !VALID_CARDS.include? card
      raise ArgumentError.new("#{card} is invalid")
    end
  end
  hand.each do |card|
      if face_cards.include? card
        score += 10
      elsif card == 'Ace'
        aces += 1
      else
        score += card
      end
  end

  hand.each do |card|
    if card == 'Ace'
      if score + 11 <= 21
        score += 11
      else
        score += 1
      end
    end
  end


    if score > 21
      raise ArgumentError.new("#{score} is exceeding 21")
    end

  return score
end
