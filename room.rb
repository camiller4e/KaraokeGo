class Room
  attr_accessor :number, :capacity, :guests, :songbook, :entry_fee

  def initialize(number, capacity, guests, songbook, entry_fee)
    @number = number
    @capacity = capacity
    @guests = []
    @songbook = []
    @entry_fee = entry_fee
  end

  def add_guest_to_room(guest)
    @guests << guest
  end

end
