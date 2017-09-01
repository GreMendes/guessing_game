require "./guessing_game/*"

module GuessingGame
  secret_number = rand(100) + 1
  puts "Guess a number!"
  print "Please input your guess:"
  if guess = gets

    begin
      guessed_number = guess.to_i
    rescue
      puts "#{guess} isn't a number!"
      exit 1
    end

    puts "You guessed: #{guess}"

    if guess > secret_number
      puts "To big!"
    elsif guess < secret_number
      puts "To small!"
    else
      puts "You win!"
    end
  end

end
