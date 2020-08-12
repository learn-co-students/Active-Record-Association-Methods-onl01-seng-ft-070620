class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.all.find {|artist| artist.name == "Drake"} == nil
      Artist.create(name: "Drake")
    end
    self.artist = Artist.find_by(name: "Drake")
  end
end