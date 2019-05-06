require 'pry'

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


def play(songs)
song_choice = gets.chomp
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif (1..9).to_a.include?(song_choice.to_i)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  puts "#{songs}"
end

def help
puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program" 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help()
  puts "Please enter a command:"
  song_choice = gets.chomp
  if song_choice == "exit"
    exit_jukebox()
  elsif song_choice == "list"
    list(songs)
  elsif song_choice == "play"
    play(songs)
  elsif song_choice == "help"
    help()
  else
  end
end