class Artist
  attr_accessor :name, :songs

    @@song_count = 0

  def initialize (artist_name = nil)
    @name = artist_name
    @songs = []
  end

  def add_song (song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name (song_name)
    add_song (Song.new(song_name))
  end

  def self.song_count
    @@song_count
  end
end
