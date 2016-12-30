def numbers_to_words(n)
  numbers_to_name = {
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }
  words = numbers_to_name[n]
  if words.nil?
    tens,ones = n.to_s.each_char.map(&:to_i)
    words = numbers_to_name[tens*10] + " " + numbers_to_name[ones]
  end
  words
end

def time_in_words(h,m)
  numbers_to_name = {
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }
  words = ""
  if m == 0
    words = numbers_to_words(h) + " o' clock"
  elsif m == 15
    words = "quarter past " + numbers_to_words(h)
  elsif m == 45
    words = "quarter to " + numbers_to_words(h+1)
  elsif m == 30
    words = "half past " + numbers_to_words(h)
  elsif m < 30
    words = numbers_to_words(m) + " minutes past " + numbers_to_words(h)
  else
    words = numbers_to_words(60-m) + " minutes to " + numbers_to_words(h+1)
  end
  words
end

h = gets.to_i
m = gets.to_i

puts time_in_words(h,m)
