class Song
  attr_accessor :song
  @all = []

  def self.create
    Song.new
    song
  end

  def save
    self.class.all << self
  end
end
