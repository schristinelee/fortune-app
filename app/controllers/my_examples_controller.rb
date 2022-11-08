class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["You will gen an error!", "You won't get any errors!", "You will have several errors!"]
    render json: { fortune: fortunes.sample }
  end

  def lotto_method
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: { lotto_numbers: numbers }
  end

  def counter_method
    count = 0
    count += 1 #this doesn't actually work
    render json: { number_of_visits: count }
  end

  def beer_method
    lyrics = []
    number = 99
    97.times do
      message = "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around, #{number - 1} bottles of beer on the wall."
      lyrics << message
      number -= 1
    end
    message = "2 bottles of beer on the wall, 2 bottles of beer. Take one down and pass it around, 1 bottle of beer on the wall. 1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall. No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
    lyrics << message
    render json: { message: lyrics }
  end
end
