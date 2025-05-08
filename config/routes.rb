Rails.application.routes.draw do
  root "game#rules"

  get "/rock", to: "game#rock"
  get "/paper", to: "game#paper"
  get "/scissors", to: "game#scissors"
end
# This code defines the routes for a Ruby on Rails application. The root route is set to the "rules" action of the "game" controller. Additionally, there are routes defined for the "rock", "paper", and "scissors" actions of the same controller.
