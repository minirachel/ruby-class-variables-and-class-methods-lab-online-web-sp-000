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

  def self.genre_count(genre)
    #    "genre" ==> int of songs
  #"iterate over @@genres"
    #see if hash already has a key then add
    genre_histogram = {}
    genre_histogram[genre] << @@genres.count(genre)
  end


end
