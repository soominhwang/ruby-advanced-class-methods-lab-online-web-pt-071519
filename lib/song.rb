class Song
  attr_accessor :song
  @@all = []

  def self.all
    @all
  end

  def self.create
    song_object = Song.new
    song_object.save
  end

  def save
    self.class.all << self
  end
end
