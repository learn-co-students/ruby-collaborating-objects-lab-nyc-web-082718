require 'pry'
class MP3Importer

  attr_accessor :path, :songs

  def initialize(path)
    @path = path
    @songs = []

    f = Dir["#{@path}/*.mp3"]
    f.each do |song|
      song_name = song.split("/")[-1]
      @songs << Song.new(song_name).name
    end
  end

  def files
    @songs
  end

  def import
    @songs.each do |song_file_name|
      Song.new_by_filename(song_file_name)
    end
  end
end
