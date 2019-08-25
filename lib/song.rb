class Song
  attr_accessor :song
  @@all = []

  def self.create
    Song_object = Song.new
    Song_object.save
  end

  def save
    self.class.all << self
  end
end
