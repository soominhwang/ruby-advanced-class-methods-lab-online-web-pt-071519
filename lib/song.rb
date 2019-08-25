class Song
  attr_accessor :name
  @@all = []

  def self.all
    @@all
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
    song_object
  end

  def self.find_by_name(name)
    @@all.each do |song|
      if song.name = name
        return song
      end
    end
    return nil
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    @@all.each do |song|
      if song.name = name
        song.find_by_name
      else
        self.create_by_name
      end
  end

end
