$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
#binding.pry
# Find a way to accumulate the :worldwide_grosses and return that Integer
def gross_for_director(director_data)
total = 0
index_movies = 0
movie = director_data[:movies]
while index_movies < movie.length do
  puts movie[index_movies][:worldwide_grosses]
  total = total + movie[index_movies][:worldwide_grosses]
  index_movies += 1
  
end
total
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
# using director_data as input

# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  index_dr = 0
  director = nds[index_dr][:name]
  while index_dr < nds.length do
    
      result[director] = gross_for_director(director_data)
      index_dr +=1
  end
  nil
end