 class Rooms

  attr_reader :name, :guests, :songs, :entry_fee

  def initialize (name, guests, songs, entry_fee)
   @name = name
   @guests = guests
   @songs = songs
   @entry_fee = 5
   @cash = []
 end

 def total_guests()
  @guests.length
 end

 def check_in(guest)
  @guests.push guest
 end

 def check_out(guest)
  @guests.delete(guest)
 end

 def not_enough_free_space(available_places, guest)
  if @guests.length < available_places
    @guests.push guest
  else
    return false
  end 
 end


# def guest_money(guest)
#  if guest.money >= @entry_fee
#    @guests.push guest
#  else
#   return false
# end
# end



def add_song_to_room(song)
 @songs << song
return @songs.length
end


def check_favourite_song(favourite_song)
 for song in @songs
  if song == favourite_song
    return "Whoo!"
  else return false
  end
 end
end






end