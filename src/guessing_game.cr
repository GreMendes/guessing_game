require "./guessing_game/*"

module GuessingGame

secret_number = rand(100) + 1
puts "Guess a number!"

loop do
  print "Please input your guess:"
  if guess = gets

    begin
      guessed_number = guess.to_i
    rescue
      puts "#{guess} isn't a number!"
      exit 1
    end

    puts "You guessed: #{guess}"

    if guessed_number > secret_number
      puts "To big!"
    elsif guessed_number < secret_number
      puts "To small!"
    else
      puts "You win!"
      break
    end
  end
end

end
