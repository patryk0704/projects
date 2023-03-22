puts "Welcome in the guessing number game!"
random_number = rand(1..100)
guess = nil
guess_count = 0
guess_limit = 5


while guess_count < guess_limit
    puts "Give me a number from 1 to 100."
    guess = gets.chomp.to_i

    if guess < random_number
        puts "The number you are looking for is higher"

    elsif guess > random_number
        puts "The number you are looking for is lower"
    
    else guess == random_number
        puts "You win!"
        break
    end

    guess_count += 1
    puts "You have #{guess_limit - guess_count} guesses"
end

if guess_count == guess_limit
    puts "You lose!"
    puts "The secret number was #{random_number}"
end