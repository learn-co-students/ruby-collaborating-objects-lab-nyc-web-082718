require 'pry'

require_relative './song.rb'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    local_mp3_files = []
    Dir.new(self.path).each do |mp3_files|
      if mp3_files.end_with?(".mp3") == false
      else
        local_mp3_files << mp3_files
      end
    end
    local_mp3_files
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
  end

end

# binding.pry
