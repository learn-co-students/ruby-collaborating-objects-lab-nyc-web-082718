class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    artist_name = filename.split(" - ")[0]
    new_instance = self.new(song_name)
    new_instance.artist = Artist.find_or_create_by_name(artist_name)
    # new_song.artist = artist_name
    new_instance
    # new_song.artist.name
    # binding.pry
  end

end

# binding.pry
