Rails.application.routes.draw do
  get "/fortune_path", controller: "my_examples", action: "fortune_method"
  get "/lotto_path", controller: "my_examples", action: "lotto_method"
  get "/counter_path", controller: "my_examples", action: "counter_method"
  get "/beer_path", controller: "my_examples", action: "beer_method"
end
