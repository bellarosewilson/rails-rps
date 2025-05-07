# config/routes.rb
Rails.application.routes.draw do
  get 'game/rock'
  get 'game/paper'
  get 'game/scissors'
  get 'game/rules'
  root "game#rules"

  get "/rock", to: "game#rock"
  get "/paper", to: "game#paper"
  get "/scissors", to: "game#scissors"
  get "/rules", to: "game#rules"
  
end
