class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

# return the name of the genre the current song belongs to
  def get_genre_name
    self.genre.name
  end

# create an association between a song and an artist
# create a record for Drake only if it hasn't been created yet
# assign the current song to the drake Artist instance
  def drake_made_this
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake
  end
end
