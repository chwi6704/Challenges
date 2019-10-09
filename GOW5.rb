answer = "marcus fenix"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != answer && !out_of_guesses
  if guess_count < guess_limit
  puts "Who is the master of popin grub dome and tomatos?"
  guess = gets.chomp()
  guess_count += 1
else 
  out_of_guesses = true
end
end

if out_of_guesses
  puts "wow dood, is your best friend Glen?"
else
  puts "DAMN RIGHT! M Fenix is cash ass money!"
end

