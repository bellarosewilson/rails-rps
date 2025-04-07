class GameController < ApplicationController
  def rules
    render :homepage
  end

  def rock
    play("rock")
    render :zebra
  end

  def paper
    play("paper")
    render :giraffe
  end

  def scissors
    play("scissors")
    render :capybara
  end

  private

  def play(player_move)
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample

    @outcome = case [player_move, @comp_move]
               when ["rock", "rock"], ["paper", "paper"], ["scissors", "scissors"]
                 "tied"
               when ["rock", "scissors"], ["paper", "rock"], ["scissors", "paper"]
                 "won"
               else
                 "lost"
               end
  end
end
