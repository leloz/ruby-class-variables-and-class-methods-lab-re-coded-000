class Song
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
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
def self.artist_count
  @@artist_c = {}
  @@artists.each do |art|
    if @@artist_c[art]
      @@artist_c[art] += 1
    else
      @@artist_c[art] = 1
      end
       end
    @@artist_c
end

def self.genre_count
  genre_count={}
  @@genres.each do |genre|
  if genre_count[genre]
    genre_count[genre]+=1
  else
    genre_count[genre]=1
    end
    end
     genre_count
   end
   end
#leloz=Song.count
#Song.new
