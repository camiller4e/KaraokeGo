class Room
  attr_accessor :number, :capacity, :guests, :songbook

  def initialize(number, capacity, guests, songbook)
    @number = number
    @capacity = capacity
    @guests = []
    @songbook = []
  end

  def add_guest_to_room(guest)
    @guests << guest
  end

  def remove_guest_from_room(guest)
    @guests.delete(guest)
  end

end
