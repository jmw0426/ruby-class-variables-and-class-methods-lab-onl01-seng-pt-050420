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
  
  def self.artists
    @@artists.uniq.compact
  end
  
  def self.genres
    @@genres.uniq.compact
  end
  
 def self.genre_count
    genre_list = {}
    @@genres.each do |genre| 
      if genre_list[genre]
        genre_list[genre] +=1
      else
      genre_list[genre] = 1
      end
    end
    genre_list
  end
  
  def self.artist_count
    artist_list = {}
    @@artists.each do |singer|
      if artist_list[singer]
        artist_list[singer] +=1
      else 
      artist_list[singer] = 1
      end
    end
    artist_list
  end
  
end