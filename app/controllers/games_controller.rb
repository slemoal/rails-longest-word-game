class GamesController < ApplicationController
  def new
  # display a new random grid and a form
    @new = Array.new(10) { ('A'..'Z').to_a.sample }
  # The form will be submitted (with POST) to the score action.
  end

  def score
  end

=begin
  def included?(guess, grid)
    guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) }
  end

  def english_word?(word)
    response = open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
    return json['found']
  end
=end

end
