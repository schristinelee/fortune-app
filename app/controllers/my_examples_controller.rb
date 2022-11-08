class MyExamplesController < ApplicationController
  def fortune_method
    render json: fortunes = ["You will gen an error!", "You won't get any errors!", "You will have several errors!"].sample
  end

  def lotto_numbers
    lotto_numbers = []
    6.times do
      number = rand(1..60)
      lotto_numbers << number
    end
    render json: { lotto_numbers: lotto_numbers }
  end

  def counter_action
    count = 0
    count += 1
    render json: { number_of_visits: count }
  end

  def beer_lyrics
    lyrics = []
    number = 99
    100.times do
      if number == 0
        lyrics << "No more bottles of beer on the wall, no more bottles of beer.
        Go to the store and buy some more, 99 bottles of beer on the wall."
        # elsif number
      end
    end
    render json: { beer_lyrics: beer_lyrics }
  end
end
