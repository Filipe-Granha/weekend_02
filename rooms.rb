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


end