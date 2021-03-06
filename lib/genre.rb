require 'pry'

class Genre
  attr_accessor :name

  @@all = []

  def initialize(genre_name)
    @name = genre_name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end



end
