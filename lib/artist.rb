class Artist

  @@all = []

  attr_accessor :name, :songs

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    if @@all.map do |artist|
      artist.name
    end.uniq.include? artist_name
      @@all.find do |artist|
        artist.name == artist_name
      end
    else
      a = Artist.new(artist_name)
      @@all << a
      a
    end
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
