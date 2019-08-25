class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song_object = Song.new
    song_object.save
    song_object
  end

  def self.new_by_name(name)
    song_object = Song.new
    song_object.name = name
    song_object
  end

  def self.create_by_name(name)
    song_object = Song.new
    song_object.name = name
    song_object.save
  end

end
