answer = "link"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != answer && !out_of_guesses
  if guess_count < guess_limit
  puts "who is the hero of time?"
  guess = gets.chomp()
  guess_count += 1
else 
  out_of_guesses = true
end 
end

if out_of_guesses
  puts "sorry dood, ur gay"
else
  puts "Correct! Link is the hero of time and Zelda's mmmmm BUTT"
end
