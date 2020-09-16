# ```ruby
describe 'blackjack_score' do
  it 'return 21 for a King and an Ace' do
    #arrange
    hand = ['King', 'Ace']

    #act
    score = blackjack_score([hand])

    #assert
    expect(score).must_equal 21

  end

  it 'return 21 for 2 Kings and Ace' do
    #arrange
    hand = ['King', 'King', 'Ace']

    #act
    score = blackjack_score([hand])

    #assert
    expect(score).must_equal 21

  end
  it 'return 22 for a Queen, a Kings and 2' do
    #arrange
    hand = ['King', 'Queen', 2]

    #act
    score = blackjack_score([hand])

    #assert
    expect(score).must_equal 22
  end
end

