class Artist 
  attr_accessor :name 
  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = [] 
    @@song_count +=1
  end 
  
  def songs
    @songs
  end
  
  def add_song(song_name) 
    song = Song.new(song_name) 
    @songs << song 
    song.artist = self 
    return song 
  end 
  
  def add_song_by_name(song_name)
    return add_song(song_name)
  end 
  
  def self.song_count 
    return @@song_count 
  end 
end 