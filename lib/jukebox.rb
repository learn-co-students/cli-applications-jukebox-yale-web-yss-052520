# Add your code here
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  for i in 0..songs.length-1 do 
    puts "#{i+1}. #{songs[i]}"
  end
end
  
def play(songs)
  puts "Please enter a song name or number:"
  user_input=gets.strip
  if (1..songs.length).cover?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i-1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
    #play(songs)
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  loop do
    puts "Please enter a command:"
    user_input=gets.strip
    case user_input
    when "exit"
      exit_jukebox
      break
    when "help"
      help    
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end
end
