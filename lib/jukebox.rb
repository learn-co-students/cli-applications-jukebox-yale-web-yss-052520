# Add your code here

def help

  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  count = 0
  while count < songs.size do
    if songs[count] == response || count == (response.to_i - 1)
      puts "Playing #{songs[count]}"
      return true
      break
    end
    count += 1
  end
  puts "Invalid input, please try again"
end

def list(songs)
  count = 0
  while count < songs.size do
    puts "#{count+1}. " + songs[count]
    count += 1
  end

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  while input != "exit" do
    if input == "list"
      list songs
    elsif input == "help"
      help
    elsif input == "play"
      play(songs)
    end
    input = gets.strip
  end
    exit_jukebox

end
