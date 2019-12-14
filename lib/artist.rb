class Artist 
  attr_accessor :name
  
  @@song_count = 0 
  
  def initialize(name)
    @name = name 
    @songs = [] 
  end 
  
  def songs
    Song.all.select { |song| 
      song.artist == self
    }
  end 
  
  def add_song(song)
    song.artist = self 
    @songs << song
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self 
  end 
  
  def self.song_count
    if self.add_song(song)
      @@song_count += 1 
    elsif self.add_song_by_name(song_name)
      @@song_count += 1 
    else 
      @song_count += 0 
    end 
  end 
end 