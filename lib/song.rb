class Song
 attr_accessor :track, :artist, :genre
  @@count = 0
  @@genre = []
  def initialize(track,artist,genre)
    @@track = track
    @@artist = artist
    @@genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
def self.count
  @@count
end
def self.genres
  @@genres.uniq
end
def self.artists
  @@artists.uniq
end
def self.genre_counter
  genre_count = Hash.new(0)
    @@genres.each do |genre| genre_count[genre] += 1
    end
    genre_count
  end
def self.artist_count
  artist_count = Hash.new(0)
  @@artists.each do |artist| artist_count[artist] += 1
  end
  artist_count
  end
end
