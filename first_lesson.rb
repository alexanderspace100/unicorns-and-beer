# variable = value (DataType: String)
tasja_mood = "happy"

p "How is Tasja's mood today? #{tasja_mood}"

# variable = value (DataType: Integer (Number))
people_in_the_room = 15

# variable = value (DataType: Float (Number))
rating_blade_runner = 8.5

# variable = value (DataType: Array (List))
socks_box = ["cat", "black"]

socks_box.each do |sock_type|
  puts "Tasja has #{sock_type} socks"
end

# variable = value (DataType: Hash)
mood_map = {
  "Monday" => "tired",
  "Tuestday" => "tired",
  "Wednesday" => "tired",
  "Thursday" => "tired",
  "Friday" => "happy",
}

mood_map.each do |day, mood|
  puts "On #{day} Tasja feels #{mood}"
end

# puts mood_map.methods.sort

p mood_map["Monday"]

clients = [
  {
    "name" => "Tasja",
    "age" => 18,
  },
  {
    "name" => "Ioana",
    "age" => 18,
  },
  {
    "name" => "Thorsten",
    "age" => 30,
  },
]

clients.each do |client|

  if client["age"] < 30
    prefix = "young"
  elsif client["age"] == 30
    prefix = "modest"
  else
    prefix = "old"
  end

  puts "Hello #{prefix} #{client["name"]}!"
end
