
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message" 
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play" 
  puts "- exit : exits this program" 
end 

def list(songs_array) 
  songs_array.each_with_index do |song,ind| 
    puts "#{ind+1}. #{song}" 
  end 
end 

def play(songs_array)
  puts "Please enter a song name or number:" 
  input = gets.strip 
  songs_array.each_with_index do |song,ind|
    if input == (ind+1).to_s 
      puts "Playing #{song}"
      return 
    elsif input == song
      puts "Playing #{song}"
      return 
    end 
  end 
  puts "Invalid input, please try again" 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs_array)
  puts "Please enter a command:"
  input = gets.strip 
  if input == "help"
    help 
  elsif input == "list" 
    list(songs_array)
  elsif input == "play" 
    play(songs_array) 
  elsif input == "exit"
    exit_jukebox
    return 
  end 
  run(songs_array)
end

