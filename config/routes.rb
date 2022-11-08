Rails.application.routes.draw do
  get "/fortune_path", controller: "my_examples", action: "fortune_method"
end
