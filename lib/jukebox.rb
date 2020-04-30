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


def play(songs) 
  puts "Please enter a song name or number:"
  user_input = gets.strip 
  is_number = user_input.to_i
  if is_number > 0 
    if is_number < songs.length 
      puts "Playing #{songs[is_number-1]}"
    else 
      puts "Invalid input, please try again"
    end 
  else 
    found_song = songs.find(user_input)
    if found_song
      puts "Playing #{found_song}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
end 


def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 


def exit_jukebox 
  
end 