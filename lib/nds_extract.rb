$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
#binding.pry
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total = 0
index_movies = 0
movie = nds[index][:movie]
while index_movies < movie.length do
  puts movie[index_movies][:worldwide_grosses]
  total = total + movie[index_movies][:worldwide_grosses]
  index_movies += 1
  
end
total
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end