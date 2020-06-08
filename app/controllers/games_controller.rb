require 'open-uri'


class GamesController < ApplicationController

  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    if english_word?(@word)

    end

  end

  private

  def english_word?(word)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    response = open(url)
    result = JSON.parse(response.read)
    result["found"]
  end
end
