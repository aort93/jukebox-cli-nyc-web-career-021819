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
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  song_num = (1..9).to_a

  if song_num.include?(song.to_i)
    puts "Playing #{songs[song.to_i - 1]}"
  elsif songs.include?(song)
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help

  input = ""
  while input   #if and while an input is put in and not when there is no input
    puts "Please enter a command:"
    input = gets.downcase.strip
    
    if input === 'list'
      list(songs)
    elsif input === 'play'
      list(songs)
      play(songs)
    elsif input === 'help'
      help
    elsif input === 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
