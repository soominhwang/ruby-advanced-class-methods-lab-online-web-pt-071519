class Song
  attr_accessor :song
  @all = []

  def self.create
    song = Song.new
  end

  def save
    self.class.all << self
  end
end
