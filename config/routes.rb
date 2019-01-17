Rails.application.routes.draw do
  namespace :api do
    get '/params_game' => 'params_games#name_game'
    get '/string_guessing_game' => 'params_games#string_guessing_game'
  end  
end
