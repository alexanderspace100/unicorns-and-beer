language = ARGV.first

dictionary = {
  'bird' => {
    'de' => 'vogel',
    'en' => 'bird',
    'ro' => 'pasare',
    'sv' => 'fagel',
    'it' => 'uccello',
    'sp' => 'pájaro',
  },
  'car' => {
    'de' => 'auto',
    'en' => 'car',
    'ro' => 'masina',
    'sv' => 'bil',
    'it' => 'auto',
    'sp' => 'coche',
  }
}

random_word = dictionary.keys.sample

# Possible ways of outputting content:
# print "Hello Johannes, what is the translation for ...?"
# puts "Hello Johannes, what is the translation for ...?"
# p "Hello Johannes, what is the translation for ...?"

# No special magic for ' (single quotes) :(
# puts 'Hello Johannes, what is the #{language} translation for \"#{random_word}\"?'
puts "Hello Johannes, what is the #{language} translation for \"#{random_word}\"?"

# johannes_answer = STDIN.gets
# johannes_answer = STDIN.gets.chomp

# p johannes_answer
# puts johannes_answer
# print johannes_answer

johannes_answer = STDIN.gets.chomp
correct_answer  = dictionary.fetch(random_word).fetch(language)

if johannes_answer == correct_answer
  puts "YES - #{johannes_answer} is correct. you are great!"
else
  puts "No :( #{correct_answer} would be correct."
end
