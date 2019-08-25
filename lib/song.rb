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
    # @@all.include ? name
    # @@all ==> collection / array of Song
    # Song ==> class that contains name:String
    # name ==> name of Song  / :String

    #============================#
    # Find by name
    # Given a name (String),
    # check if name:string is in @@all (array of Songs which contain name:String),
    #
    @@all.each do |song|
      if song.name = name
        return song
      end
    end
    
    # if yes, return Song object,
    # else, return falsey

  end

  def save
    self.class.all << self
  end
end
