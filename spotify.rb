# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #
first_arg, *the_rest = ARGV 
 
if first_arg == "add"
	my_song = Song.create(song_name: ARGV[1], played_status: ARGV[2])
	puts "This song has been added to your list."

elsif
	first_arg == "list"
	song_list = Song.all.order(:played_status)
		song_list.each {|song| p song }

elsif
	first_arg == "find"
	song = Song.find_by(song_name: ARGV[1])
	if song 
		p song
	else 
		puts "No such song in your list."
	end

elsif
	first_arg == "update"
	song = Song.find_by(song_name: ARGV[1])
	if song
		song.update(song_name: ARGV[1], played_status: ARGV[2])
		puts "This song has been updated."
	else 
		puts "No such song in your list."
	end

else 
	first_arg == "delete"
	song = Song.find_by(song_name: ARGV[1])
	song.delete
	puts "This song has been deleted from your list."
end












# if argv[0] == add
# 	task1 = Task.new(song_name: "Hey", played_status: "played")
# task1.save
# p task1