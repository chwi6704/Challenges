def luhn(card_no)
  card_no
    .chars       # Break into individual digits
    .map(&:to_i) # map each character by calling #to_i on it
    .reverse     # Start from the end
    .map.with_index { |x, i| i.odd? ? x * 2 : x } # Double every other digit
    .map { |x| x > 9 ? x - 9 : x }  # If > 9, subtract 9 (same as adding the digits)
    .inject(0, :+) % 10 == 0        # Check if multiple of 10
end

puts luhn("377681478627337")