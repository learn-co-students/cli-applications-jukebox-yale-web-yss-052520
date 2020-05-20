require 'pry'
# Add your code here
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
  songs.length.times do |index|
    puts (index + 1).to_s + ". " + songs[index]
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  if songs.include?(response)
    puts "Playing #{response}"
  elsif response.to_i >= 1 && response.to_i <= songs.length
    index = response.to_i - 1
    song = songs[index]
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  while command != "exit" do
    puts "Please enter a command: "
    command = gets.strip
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
  end
  exit_jukebox
end
