class Artist
  attr_accessor :name
  @@all = []
  
  
  def initialize(name)
    @name = name
   @songs = []
   save
end

 def self.all
  @@all
 end

 def add_song(song)
     @songs << song
 end
 
 def songs
    Song.all.select {|song| song.artist == self}
  end
 
 def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
 end
 
 def self.find(name)
 self.all.find {|artist| artist.name == name }
 end
 
 def self.create(name)
   self.new(name).tap {|artist| artist.save}
 end
 
 def save
   @@all << self
 end
 
 def print_songs
   songs.each {|song| puts song.name}
 end
 
 end
 
 
 
 


  
#   def self.find_or_create_by_name(song)
   
#  if song.artist = self                                           
  
#     Song.all.find {|song| song.artist.unique == self}
  
#   else
   
#    self.create
    
#   c = self.new
  
#     c.save
   
#    c
    
#  end
  
#    print_songs
   
#  end

   
#  def print_songs
  
#     puts self.find_or_create_by_name
   
#  end

  
# end