require "./guessing_game/*"

module GuessingGame
  secret_number = rand(100) + 1
  puts "Guess a number!"
  print "Please input your guess:"
  guess = gets

  puts "You guessed: #{guess}"

  if guess > secret_number
    puts "To big!"
  elsif guess < secret_number
    puts "To small!"
  else
    puts "You wii!"
  end

end
