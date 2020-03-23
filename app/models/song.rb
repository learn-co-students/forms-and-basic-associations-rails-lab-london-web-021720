class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist 
  belongs_to :genre 
  has_many :notes 

  def notes=(notes)
    
      notes.each do |key, value| 
      note = Note.create(content: value, song: self)
      self.notes << note 
     
      end

  end 

  def artist_name=(name)
     artist =  Artist.find_or_create_by(name:name)
     self.artist = artist 
      
  end 

  def artist_name 
    self.artist ? self.artist.name : nil
  end


#   def song_genre_id=(id)
#     genre =  Genre.find(id)
#     self.genre = genre
     
#  end 

#  def song_genre_id 
#   self.genre ? self.genre.name : nil

# end

  
  
  


  # def add_note
  #   self.notes? self.notes : nil
  # end





end
