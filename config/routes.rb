Rails.application.routes.draw do
  namespace :api do
    get '/params_game' => 'params_games#name_game'
    get '/string_guessing_game' => 'params_games#string_guessing_game'
    get '/segment_guessing_game/:number' => 'params_games#segment_guessing_game'
    post '/body_guessing_game' => 'params_games#body_guessing_game'
  end  
end
