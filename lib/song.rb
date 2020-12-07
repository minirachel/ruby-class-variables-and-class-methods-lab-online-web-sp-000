require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    #    "genre" ==> int of songs
  #"iterate over @@genres"
    #see if hash already has a key then add
    genre_histogram = {}
    binding.pry
    genre_histogram[*@@genres.group_by{|genre| genre}.map{|g, c| [g, c.size]}]
    genre_histogram
  end


end
