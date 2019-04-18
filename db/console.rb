require('pry')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'Muse'})
artist2 = Artist.new({'name' => 'Blood Red Sgoes'})
artist1.save()
artist2.save()

album1 = Album.new({'title' => 'Drones', 'genre' => 'pop-rock', 'artist_id' => artist1.id})
album2 = Album.new({'title' => 'Box of Secrets', 'genre' => 'alt-rock', 'artist_id' => artist2.id})
album1.save
album2.save

album1.genre = "rock"
album1.update()

artist2.name = "Blood Red Shoes"
artist2.update()

albums = Album.all()
artists = Artist.all()

artist1.albums()
album2.artist()

p Artist.find_by_id(artist1.id)
p Album.find_by_id(album2.id)

# binding.pry
nil
