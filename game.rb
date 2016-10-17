require 'sinatra'

#before processing a route, set response
#as plain text and set up an array of viable
#moves a player(comp) can perform
before do
  content_type :txt
  @default = {rock: :scissors, paper: :rock, scissors: :paper}
  @throws = @default.keys
end

get '/throw/:type' do
  #the params[] hash stores querystring and form data
  player_throw = params[:type].to_sym

  #if player provides invalid throw, halt with a status
  #code of 403 (forbidden), and let them know they need
  #to make a valid throw to play

  if !@throws.include?(player_throw)
     halt 403, "You must throw one of the following: #{@throws}"
  end

  #select random throw for computer
  comp_throw = @throws.sample

  #compare player and comp throws to determine winner
  if player_throw == comp_throw
    "You tied with the computer. Try again!!"
  elsif comp_throw == @default[player_throw]
    "Nicely done: #{player_throw} beats #{comp_throw}"
  else
    "Ouch: #{comp_throw} beats #{player_throw}. Better luck next time!!"
  end
end
