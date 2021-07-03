def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) {|val, index| puts "#{index}. #{val}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i > 0 && input.to_i < 10
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  while true do
    puts "Please enter a command:"
    input = gets.strip
    case input
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        return  
    end 
  end 
end 