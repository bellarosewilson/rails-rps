# app/controllers/game_controller.rb
class GameController < ApplicationController
  def rules
    # This will just render the rules.html.erb
  end

  def rock
    play("rock")
  end

  def paper
    play("paper")
  end

  def scissors
    play("scissors")
  end

  private

  def play(player_choice)
    choices = ["rock", "paper", "scissors"]
    computer_choice = choices.sample

    result = if player_choice == computer_choice
               "It's a tie!"
             elsif (player_choice == "rock" && computer_choice == "scissors") ||
                   (player_choice == "paper" && computer_choice == "rock") ||
                   (player_choice == "scissors" && computer_choice == "paper")
               "You win!"
             else
               "You lose!"
             end

    @player_choice = player_choice
    @computer_choice = computer_choice
    @result = result

    render :result
  end
end
