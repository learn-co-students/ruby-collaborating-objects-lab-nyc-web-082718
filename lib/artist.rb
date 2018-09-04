class Artist

  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    found = @@all.find do |artist|
      artist.name == name
    end
    if !found
      found = Artist.new(name)
    end
    found
  end

  def print_songs
    @songs.each { |song| puts song.name }
  end
  
end
