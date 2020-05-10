require "pry"

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

def list(songs)
  songs.each.with_index(1) {|val, index| puts "#{index}. #{val}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  input = input.to_i if input.length == 1
  
  song_name = nil
  if input.is_a? String
    song_name = input if songs.include? (input)
  else 
    song_name = songs[input-1] if input > 0 && input < 10
  end 
  
  song_name ? puts("Playing #{song_name}") : puts("Invalid input, please try again")
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