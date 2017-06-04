 class Rooms

  attr_reader :name, :guests, :songs

  def initialize (name, guests, songs)
   @name = name
   @guests = guests
   @songs = songs
   @entry_fee = []
 end

 def total_guests()
  @guests.length
 end

 def check_in(guest)
  @guests.push guest
 end


end