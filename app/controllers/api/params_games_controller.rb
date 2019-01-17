class Api::ParamsGamesController < ApplicationController
  def name_game
    @name = params[:my_name].upcase

    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet"
    end    

    render 'name_view.json.jbuilder'  
  end

  def string_guessing_game
      @guess = params[:guess].to_i
      correct_number = 42

      if @guess > correct_number
        @message = "Guess lower"
      elsif @guess < correct_number
        @message = "Guess higher, you can do it"
      else
        @message = "You got it!"  
      end
        
      render 'string_guessing_game.json.jbuilder'
  end    
end
