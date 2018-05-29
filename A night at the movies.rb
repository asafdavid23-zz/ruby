movies = {

  StarWars: 4.8 ,
  Divergent: 4.7,

  }

puts "Press 'add' to add a movie"
puts "Press 'update' to update a movie"
puts "Press 'display' to display all of available movies"
puts "Press 'delete' to delete an existing movies"

choice = gets.chomp

case choice
	when "add"
  	puts "What movie would you like to add? "
  	title = gets.chomp

  	if movies[title.to_sym].nil? 
    	puts "What rating does the movie have? "
    	rating = gets.chomp
    	movies[title.to_sym] = rating.to_i
  	else
    	puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  	end

	when "update"
  	puts "What movie would you like to update? "
  	title = gets.chomp
  	if movies[title.to_sym].nil? 
    	puts "That movie does not exist."
  	else
    	puts "What is the new rating? "
    	rating = gets.chomp
    	movies[title.to_sym] = rating.to_i
  	end

	when "display"
		movies.each { |movie, rating| puts "#{movie}: #{rating}"}

	when "delete"
  	puts "What movie would you like to delete?"
  	title = gets.chomp.to_sym
  	if movies[title].nil?
      puts "Error! the does not exist."
	else
  	movies.delete(title)
  end
puts movies
end