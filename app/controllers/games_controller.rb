class GamesController < ApplicationController

  def new
    #display new random grid and a form. Form will be submitted with POST to
    #score action
    @letters = (1..10).map { ('A'..'Z').to_a[rand(26)] }
  end

  def score
    try.include?(@letters)
  end

end
